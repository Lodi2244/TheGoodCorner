Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
  get 'users/show' => 'sessions#show'
end
  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations'
      }
  resources :offers
  resources :advanced_searches
  root 'offers#index'
end
