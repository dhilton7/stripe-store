class WelcomeController < ApplicationController

	def dashboard
		redirect_to root_path if current_user.nil?
	end
end
