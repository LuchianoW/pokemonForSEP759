class PokemonsController < ApplicationController
  def index
    @types = Pokemon.fetch_all_types # 获取所有 Pokémon 类型

    if params[:type].present?
      @pokemons = Pokemon.fetch_by_type(params[:type])
    else
      @pokemons = Pokemon.fetch_pokemons(20) # 默认获取前 20 只
    end
  end

  def details
    @pokemon = Pokemon.fetch_pokemon_details(params[:name])
  end
end
