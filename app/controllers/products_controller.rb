class ProductsController < ApplicationController
  before_action :product_find_id, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show() end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path(@products)
  end

  def destroy
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  def edit() end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description)
  end

  def product_find_id
    @product = Product.find(params[:id])
  end
end
