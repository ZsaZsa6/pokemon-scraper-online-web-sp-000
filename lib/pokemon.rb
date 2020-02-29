require "pry"

class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db: @db)

  end

  def self.save(pk_name, pk_type, db)
    sql = <<-SQL
    INSERT INTO pokemons (name, type)
    VALUES 
    SQL
    # binding.pry
  db.execute(sql, pk_name, pk_type)
  end


end
