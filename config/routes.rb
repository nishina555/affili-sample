Rails.application.routes.draw do
  get 'card_loan', to: 'cards#index'
  get 'search', to: 'cards#search'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
