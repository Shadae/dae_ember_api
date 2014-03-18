RainydaeApi::Application.routes.draw do

  defaults format: :json do
    get "/products", to: "products#index"
    get "/carts", to: "carts#index"
  end
end
