require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

	before :each do 
		@product = create :product
	end

	describe "GET index" do 
		it "should render the index template" do 
			get :index
			expect(response).to render_template(:index)
		end
	end

	describe "GET show" do
		it "should render the show template" do 
			get :show, id: @product.id
			expect(response).to render_template(:show)
		end
	end

	describe "GET new" do 
		it "should render the new template" do 
			get :new
			expect(response).to render_template(:new)
		end
	end

	describe "POST create" do 
		it "should create a new product" do 
			product_count = Product.count
			post :create, product: attributes_for(:product)
			expect(Product.count).to eq(product_count + 1)
		end
	end

	describe "GET edit" do 
		it "should render the edit template" do 
			get :edit, id: @product.id
			expect(response).to render_template(:edit)
		end
	end

	describe "PATCH update" do 
		it "should update a product" do 
			new_name = Faker::Commerce.product_name
			post :update, id: @product.id, product: {name: new_name}
			@product.reload
			expect(@product.name).to eq(new_name)
		end
	end

	describe "DELETE destroy" do 
		it "should destroy a product" do 
			delete :destroy, id: @product
			expect{Product.find @product.id}.to raise_error ActiveRecord::RecordNotFound
		end
	end

end
