require 'rails_helper'

RSpec.describe Order, type: :model do

	before :each do 
		@order = create :order
	end

	it "has a valid factory" do 
		expect(@order).to be_valid
	end

end
