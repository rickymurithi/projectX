class ProductsController < ApplicationController

  def index 
    products = Product.all
    render json: products
  end

  def show
    product = find_product
    render json:product
  end

  def create
    product = Product.create!(product_param)
    render json:product, status:201
  end

  def update
    product = find_product
    if product
      product.update!(product_param)
      render json: product
    else
      render json: {error: "Product not found"}, status: :not_found
    end
  end
  

  def destroy
    product = find_product
    product.destroy
    head :no_content
  end

  private

  def find_products
    Products.find_by(id: params[:user_id])
  end

  def product_param
    params.permit(:name, :description, :price)
  end
end
