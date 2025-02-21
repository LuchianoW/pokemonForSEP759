class Pokemon
  include HTTParty
  base_uri "https://pokeapi.co/api/v2"

  # 获取所有 Pokémon
  def self.fetch_pokemons(limit = 20)
    response = get("/pokemon?limit=#{limit}")
    response.success? ? JSON.parse(response.body)["results"] : []
  end

  # 获取单个 Pokémon 详细信息
  def self.fetch_pokemon_details(name)
    response = get("/pokemon/#{name}")
    response.success? ? JSON.parse(response.body) : {}
  end

  # 获取某个类型的所有 Pokémon
  def self.fetch_by_type(type, limit = 20)
    response = get("/type/#{type}")
    return [] unless response.success?

    pokemons = JSON.parse(response.body)["pokemon"].map { |p| p["pokemon"] }
    pokemons.first(limit) # 只取前 limit 只
  end

  # 获取所有 Pokémon 类型
  def self.fetch_all_types
    response = get("/type")
    if response.success?
      JSON.parse(response.body)["results"].map { |t| t["name"] }
    else
      []
    end
  end
end
