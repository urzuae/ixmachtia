Rails.application.routes.draw do
  get 'dashboard/index'
  
  resources :contents, except: [:new] do
    collection do
      post "reorder"
    end
  end
  
  resources :chapters, except: [:new] do
    collection do
      post "reorder"
    end
    member do
      resources :contents, only: [:new]
    end
  end

  resources :courses do
    member do
      resources :chapters, only: [:index, :new]
    end
  end

  devise_for :users

  root "dashboard#index"
end
