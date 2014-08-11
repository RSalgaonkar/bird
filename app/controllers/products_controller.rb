class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new(params[:id])
  end

  def create
  	@product = Product.create(params[:product])
  	respond_to do |format|
  	  if @product.save
  	  	format.html { redirect_to root_path, :notice => "Product was sucessfully created" }
  	  else
  	  	format.html { redirect_to root_path, :notice => "Their was an error while creating the product" }
  	  end
  	end
  end
end
