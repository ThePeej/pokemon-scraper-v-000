require 'pry'

class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  def initialize(pokemon)
    # binding.pry
    @id = pokemon[:id]
    @name = pokemon[:name]
    @type = pokemon[:type]
    @db = pokemon[:db]
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).first
    pokemon_hash = {}
    pokemon_hash[:id] = pokemon[0]
    pokemon_hash[:name] = pokemon[1]
    pokemon_hash[:type] = pokemon[2]
    pokemon_hash[:db] = db
    self.new(pokemon_hash)
  end

  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ?", new_hp)
  end

end
