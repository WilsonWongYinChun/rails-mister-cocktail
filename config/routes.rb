Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show, :new, :create]do
    resources :doses, only: [ :new, :create] do
    end
  end
  resources :doses, only: [ :destroy ]
  delete "cocktails/:id", to: "cocktails#destroy", as: :destroy_cocktail
  root to: "cocktails#index"
end
