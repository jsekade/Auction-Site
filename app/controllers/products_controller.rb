class ProductsController < ApplicationController
	def index
		@products = Product.order(created_at: :desc).limit(20);
	end
	def show
		@product = Product.find(params[:id])
		if @product.present?
			render 'show'
		else
			render 'no_product_finder'
		end
	end
	def new
		@product = Product.new
		render 'new'
	end
	def create
		@product = Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline])
		@product.save
		redirect_to '/products/#{@product.id}'
	end
end

