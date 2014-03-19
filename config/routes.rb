RainydaeApi::Application.routes.draw do

  defaults format: :json do
    resources :carts, defaults: {format: :json}
    resources :items, defaults: {format: :json}
    resources :products, defaults: {format: :json}
    resources :checkouts, defaults: {format: :json}
  end
end
