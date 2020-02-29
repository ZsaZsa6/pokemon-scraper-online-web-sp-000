class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db: @db)

  end

  def self.save(pk_name, pk_type, @db)
    sql = <<-SQL
      INSERT INTO pokemons (pk_name, pk_type)
      VALUES (?, ?)
    SQL
  DB[:conn].execute(sql, self.pk_name, self.pk_type)
  "SELECT * FROM pokemon WHERE name = ?

  end


end
