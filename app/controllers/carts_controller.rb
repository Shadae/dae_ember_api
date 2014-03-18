class CartsController < ApplicationController

  def index
    @carts = Cart.all
  end

  def show
    @cart
  end
end
