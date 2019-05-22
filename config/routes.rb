Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: %i[create] do
      resources :stories, only: %i[index]
    end
    resource :sessions, only: %i[create destroy]
    resources :stories, only: %i[create index show update destroy]
  end
end
