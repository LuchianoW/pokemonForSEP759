Rails.application.routes.draw do
  root "pokemons#index"
  get "/pokemons", to: "pokemons#index"
  get "/pokemons/:name", to: "pokemons#details", as: "pokemon" 
end


