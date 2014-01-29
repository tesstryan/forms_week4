class SessionsController < ApplicationController

	def new 
	end 

	def destroy 
		reset_session
		redirect_to root_url, notice: "You have logged out!"
	end

	def create
		user = User.find_by(email: params[:email])
			if user.present?
				if user.authenticate(params[:password])
					session[:user_id] = user.id 
					session[:email] = user.email
					redirect_to root_url, notice: "Hello, #{user.email}"
				else
					flash.now[:notice] = "Please try again"
					render 'new'
				end 
			else 
				flash.now[:notice] = "Please try again"
				render 'new'
			end
	end 


end
