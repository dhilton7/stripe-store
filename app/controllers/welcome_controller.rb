class WelcomeController < ApplicationController

	def dashboard
		redirect_to root_path if current_user.nil?
		@products = current_user.products.order('updated_at DESC').paginate(page: params[:page])
	end
end
