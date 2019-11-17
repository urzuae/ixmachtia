Rails.application.routes.draw do
  get 'dashboard/index'
  resources :contents
  resources :content_types
  resources :chapters, except: [:new]
  resources :courses do
    member do
      resources :chapters, only: [:index, :new]
    end
  end
  devise_for :users

  root "dashboard#index"
end
