class WelcomeController < ApplicationController

	def index
		if current_user.present?
			render :dashboard
		end
	end
end
