class ProductsController < ApplicationController

    def index 
        products = Product.all
        render json: products
    end

    def show
        product = find_product
        render json: product, serializer: ProductsSerializer

    end

    def create
        product = Product.create!(product_param)
        if product
          render json: product, status: :created
        else
          render json: {errors: "products not created"}
        end
    end

    def update
        product = find_product

      if product
        product.update!(product_params)
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

    def find_product
      Product.find_by(id: params[:id])
    end

    def product_params
      params.permit(:name, :description, :price)
    end

end
