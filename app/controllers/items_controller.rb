class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    @item = Item.create(
      cart_id: item_params[:cart],
      product_id: item_params[:product],
      quantity: item_params[:quantity],
      # price: item_params[:subtotal]
    )
    render 'show'
  end

  def show
    @items = params[:ids]
  end

  def update
    @item = Item.find(params[:id])
    @item.update(params.require(:item).permit(:current_price, :quantity, :cart_id, :product_id))
    render "index"
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render "index"
  end

  private
  def item_params
    params.require(:item).permit(:cart, :product, :quantity, :price, :ids)
  end
end