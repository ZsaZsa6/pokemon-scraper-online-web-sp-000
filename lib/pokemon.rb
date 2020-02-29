class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db: @db)

  end

  def self.save(pk_name, pk_type, db)
    sql = <<-SQL
      INSERT INTO pokemons (pk_name, pk_type)
      VALUES (?, ?)
    SQL
  DB[:conn].execute(sql, self.name, self.grade)
  @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]

  end


end
