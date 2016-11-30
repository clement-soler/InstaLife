Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :posts do # relationship between posts and comments in routing
    resources :comments
  end

  root 'posts#index'
end
