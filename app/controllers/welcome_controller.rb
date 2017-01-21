class WelcomeController < ApplicationController

	def index
		if current_user.present?
			render :dashboard
		else
			render :home
		end
	end
end
