class Pokemon

  def initialize(pokemon)
    @id = pokemon.id
    @name = pokemon.name
    @type = pokemon.type
    @db = pokemon.db
  end

  def self.save
    @db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", @name, @type)
  end


end
