Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'performances#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :performances
      resources :users, only: [ :show ]
      # get 'purchase', to: "performances#purchase"
    end
  end
end
