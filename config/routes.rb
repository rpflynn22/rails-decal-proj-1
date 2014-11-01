Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/capture' => 'pokemons#capture', as: 'capture'
  patch '/damage' => 'pokemons#damage', as: 'damage'
  get '/pokemons/new' => 'pokemons#new', as: 'new_pokemon'
  post '/pokemons' => 'pokemons#create'
end
