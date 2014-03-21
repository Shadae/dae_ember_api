class CheckoutsController < ApplicationController
  def index
    @checkouts = Checkout.all
  end

  def show
    @checkout = Checkout.find(checkout_params[:id])
  end

  def update
    @checkout = Checkout.find(params[:id])
    @checkout.update(params.require(:checkout).permit(:cart, :name, :email, :zip, :expiration, :status, :cvv))
    render "index"
  end

  def create
    @checkout = Checkout.create(
      cart_id: checkout_params[:cart],
      name: checkout_params[:name],
      email: checkout_params[:email],
      zip: checkout_params[:zip],
      expiration: checkout_params[:expiration],
      status: checkout_params[:status],
      cvv: checkout_params[:cvv]
      )

    # @checkout = Checkout.new(checkout_params)
    if @checkout.save
      PurchaseMailer.thank_you(@checkout.id).deliver
    else

    end
    render "show"
  end

  private
  def checkout_params
    params.require(:checkout).permit(:cart, :name, :email, :zip, :expiration, :status, :cvv)
  end

end
