Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'performances#index'
  resources :performances, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :performances, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
    end
  end
end
