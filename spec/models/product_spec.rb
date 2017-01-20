require 'rails_helper'

RSpec.describe Product, type: :model do

	before :each do 
		@product = create :product
	end

	it "has a valid factory" do
		expect(@product).to be_valid
	end
end
