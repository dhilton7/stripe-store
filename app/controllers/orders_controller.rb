class OrdersController < ApplicationController

	def new
		@order = Order.new
		@product = Product.find params[:pid]
	end

	def create
		token = params[:stripeToken]
		amount = (order_params[:amount].to_f * 100).to_i
		product = Product.find order_params[:product_id]

		charge = Stripe::Charge.create({
			amount: 		amount,
			description: 	"Charge for #{product}",
			currency: 		'usd',
			source: 		token,
			application_fee: (amount * Order::APP_FEE).to_i,
			destination: product.user.uid 	
		})

		new_params = order_params.merge({
			card_token: token,
			customer_id: charge.source.id,
			stripe_charge_id: charge.id,
			email: params[:stripeEmail] 
		})
		order = Order.create new_params

		OrderMailer.confirmation_email(params[:stripeEmail], order, product).deliver_later

		redirect_to order_path(order)
	
	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to products_path
	end

	def show
		@order = Order.find params[:id]
	end

	private

	def order_params
		params.require(:order).permit(:product_id, :amount)
	end
end
