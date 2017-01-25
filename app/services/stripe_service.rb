require 'stripe'

class StripeService

	def initialize(params) 		
		@amount = params[:amount]
		@token = params[:token]
		@email = params[:email]
		@description = params[:description]
		@fee = params[:fee]
		@destination = params[:destination]
	end

	def charge
		begin
			charge = charge_object.create(charge_params)
			{:payload => charge}
		rescue Stripe::CardError => e
			{:error => e}
		end
	end

	private 

	attr_reader :amount, :token, :email, :description, :fee, :destination

	def charge_object
		Stripe::Charge
	end

	def charge_params
		{
			amount: amount,
			description: description,
			source: token,
			currency: 'usd',
			application_fee: fee,
			destination: destination
		}
	end

end
