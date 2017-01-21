class UsersController < ApplicationController
	def index
		@users = User.order(created_at: :desc).limit(20);
	end
	def show
		@user = User.find_by(id: params[:id])
		if @user.present?
			render 'show'
		else
			render 'no_user_finder'
		end
	end
	def new
		@user = User.new
		render 'new'
	end
	def create
		@user = User.new(
			:name => params[:user][:name],
			:email_address => params[:user][:email_address])
		@user.save
		redirect_to '/users/#{@user.id}'
	end
end
