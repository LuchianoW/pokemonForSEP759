Rails.application.routes.draw do
  root "pokemons#index"   # 首页
  get "/pokemons", to: "pokemons#index"
  get "/pokemons/:name", to: "pokemons#details", as: "pokemon"
end

root to: 'pokemons#index'  # 设置首页路由
