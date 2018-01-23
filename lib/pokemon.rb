class Pokemon

  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end

  def self.save
    @db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", @name, @type)
end
