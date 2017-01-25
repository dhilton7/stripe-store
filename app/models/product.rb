class Product < ActiveRecord::Base

	belongs_to :user

	# Define products per page for will_paginate
	self.per_page = 12

	def price_cents
		price * 100
	end

	def to_s
		name
	end

	# Getters & Setters

	def price=(val)
		super val.to_f * 100
	end

	def price
		super.to_i / 100.00
	end

end
