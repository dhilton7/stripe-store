class OrderMailer < ApplicationMailer
	default from: "order-confirmation@store.com"

	def confirmation_email(recipient, order, product)
		@product = product
		@order = order
		mail(to: recipient, subject: "Order Confirmation For #{product.name}")
	end
end
