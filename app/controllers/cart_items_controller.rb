class CartItemsController < ApplicationController
  def index
    @products = session[:cart_items]
  end

  def create
    session[:cart_items] ||= []
    session[:cart_items] << params[:product_id].to_i

    redirect_to cart_items_url
  end
end
