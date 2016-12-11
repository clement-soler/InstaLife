Rails.application.routes.draw do
  get 'notifications/link_through'

  get 'profiles/show'

  devise_for :users, :controllers => { registrations: 'registrations' }

    resources :posts do # relationship between posts and comments in routing
        resources :comments
        member do
          get 'like'
        end
    end



  root 'posts#index'
  get ':user_name', to: 'profiles#show', as: :profile
  get ':user_name/edit', to: 'profiles#edit', as: :edit_profile
  patch ':user_name/edit', to: 'profiles#update', as: :update_profile

  get 'notifications/:id/link_through', to: 'notifications#link_through',
                                        as: :link_through
                                        
  get 'notifications', to: 'notifications#index'
end
