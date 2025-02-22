Rails.application.routes.draw do
  root "pokemons#index"   # 首页

  # 指定完整的 URL
  get "/pokemons", to: "pokemons#index"
  get "/pokemons/:name", to: "pokemons#details", as: "pokemon", host: "pokemonforsep759.onrender.com"
end


