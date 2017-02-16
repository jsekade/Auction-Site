class ProductsController < ApplicationController
	def index
		@products = Product.order(params[:user_id])
		@product = Product.find_by(id: params[:id])
	end
	def show
		@product = Product.find_by(id: params[:id])
		if @product.present?
			@bid = Bid.new
		end
			render 'show'
		#else
		#	redirect_to 'no_product_finder' 
		end
		
	def new
		@user = User.find_by(id: params[:user_id])
		@product = Product.new
		render 'new'
	end
	def create
		@product = Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline],
			:user_id => params[:user_id]
			)

		@product.save
		
		redirect_to user_product_path(@product.user, @product)
	end
end

