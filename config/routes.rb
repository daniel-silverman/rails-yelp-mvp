Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:destroy, :update, :edit] do
  # add sub-resources after lunch!
    resources :reviews, only: [:new, :create, :index]
  end
end
