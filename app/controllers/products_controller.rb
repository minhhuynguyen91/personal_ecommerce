class ProductsController < ApplicationController
  before_action :get_product, only: [:show]
  def index
    @products = Product.all
    @order_item = current_order.order_items.build
  end

  def show
  end

  def new
  end

  def create
  end

  private
    def get_product
      @product = Product.find(params[:id])
    end

    def product_params
      params(:product).permit(:name, :description, :price, :status)
    end
end
