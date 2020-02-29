require "pry"
require_relative"...db/
class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db: @db)

  end

  def self.save(pk_name, pk_type, db)
    sql = <<-SQL
    SELECT * FROM pokemon
    WHERE pk_name = ?
    SQL
    # binding.pry
  DB[:conn].execute(sql, self.pk_name, self.pk_type)

  end


end
