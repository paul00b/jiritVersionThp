Rails.application.routes.draw do
  resources :charges
  resources :facts
  root to: 'static_pages#index'
  devise_for :users
  devise_for :views
  get 'my_facts', to: 'facts#my_facts', as: 'myfacts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
