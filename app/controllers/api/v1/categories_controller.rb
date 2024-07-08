class Api::V1::CategoriesController < ApplicationController
  def index
  end

  def show
  end

  def create
    category = Category.new(
      name: params[:name],
      description: params[:description],
    )
    if category.valid?
      category.save
      return render json: category, status: 201
    end
    render
  end

  def update
  end

  def destroy
  end

  private

  def body_params
    params.require(:product).permit([:name, :description])
  end
end
