class ProductsController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  def index 
    products = Product.all
      render json: products
  end
  def show 
    product = Product.find( 
      params[:id] 
    )
    render json: product
  end 
  
  def create
    product = Product.new( 
      name: params[:name],
      category: params[:category],
      rental_price: params[:rental_price]
    )
    if product.save 
      render json: product
    else 
      render json: {errors: product.errors.full_messages}, status: :unproccessable_entity 
    end
  end
    def update 
      product = Product.find( params[:id])
  
      if user.update(
        name: params[:name],
        category: params[:category],
        rental_price: params[:rental_price]
      )
        render json: product
      
      else 
        render json: {errors: product.errors.full_messages}, status: :unproccessable_entity
      end
    end
    def destroy 
      product = Product.find( params[:id])
      product.destroy 
        render json: {message: "product deleted"},
        status: :ok 
    end
end
