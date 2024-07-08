class Api::V1::ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product unless product.blank?
    render json: {
      message: "Product not found"
    }
  end

  def create
    product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      category: params[:category],
    )
    if product.valid?
      product.save
      render json: product, status: 201
    else
      render json: { errors: {  } }, status: 422
    end
  end

  def update
  end

  def destroy
  end

  private
  def body_params
    params.require(:product).permit([ :name, :description, :price, :category ])
  end
end
