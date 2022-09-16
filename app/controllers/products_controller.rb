class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :index, :show ]
    before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @products = Product.all
    @users = User.all
    #@username = User.find(@product.seller_id).name
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
    @product.seller_id = current_user.id
    respond_to do |format|
      if @product.save
        format.html { redirect_to mes_recettes_path, notice: "Product was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to mes_recettes_url, notice: "product was successfully destroyed." }
    end
  end

  def recipes
    @products = Product.all.where(seller_id: current_user.id)
  end

  def notifications
    @products = Product.where(seller_id: current_user.id)
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :photo)
    end
end
