class Product < ActiveRecord::Base

	belongs_to :user

	def price_cents
		price * 100
	end

	def to_s
		name
	end
end
