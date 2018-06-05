class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.sizes.shift
    @product.colors.shift
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      @product.sizes.shift
      @product.colors.shift
      @product.save
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:title, :price, :description, :category, :sizes => [], :colors => [])
    end
end
