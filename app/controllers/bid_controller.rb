class BidController < ApplicationController
	
	def create
		@user = User.find_by(email_address: params[:email_address])
		@bid = Product.bids.new(			
			amaunt: => params[:bid][:amaunt],
			user: @user
			)
		@bid.save
		redirect_to user_product_path(@product.user, @product)
	end
end
