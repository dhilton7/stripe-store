class ProductsController < ApplicationController

	load_and_authorize_resource

	def show
	end

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = current_user.products.create product_params
		if @product.save
			redirect_to products_path
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @product.update product_params
			redirect_to products_path
		else
			render :edit
		end
	end

	def destroy
		@product.destroy
		redirect_to products_path
	end

	private

	def product_params
		params.require(:product).permit(:name, :description, :price)
	end
end
