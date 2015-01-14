class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.where(email: params[:login][:email]).first
		user.authenticate(params[:login][:password])
		if user && user.authenticate(params[:login][:password])
			session[:user_id] = user.id.to_s
			redirect_to root_path
		else
			redirect_to login_path
		end
	end

	def destroy
		session.delete :user_id
		flash[:notice] = "You have logged out! Visit us again soon!"
		redirect_to root_path
	end


end
