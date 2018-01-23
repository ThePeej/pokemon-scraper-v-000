require 'pry'

class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(pokemon)
    # binding.pry
    @id = pokemon[:id]
    @name = pokemon[:name]
    @type = pokemon[:type]
    @db = pokemon[:db]
  end

  def self.save(id, name, type)
    @db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)", id, name, type)
  end


end
