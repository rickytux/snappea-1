Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, shallow: true, only: [:index] do
    member do
      get 'menu_items'
    end
  end
end
