Rails.application.routes.draw do
  get '/welcome/:first_name', to: 'welcome#show'
  root 'welcome#index'
  get '/team', to: 'static_pages#team'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/contact', to: 'static_pages#contact'
  get '/gossips/:index', to: 'welcome#gossip', as: 'gossip_page'
  get 'users/:index', to: 'welcome#user', as: 'user_page'

end
