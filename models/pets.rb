require( 'pg' )
require_relative('../db/sql_runner')

class Pet

attr_reader(:id, :name, :type)

def initialize( options )
  @id = options[ 'id' ].to_i
  @name = options[ 'name' ]
  @type = options[ 'type' ]
end

def save 
    sql = "INSERT INTO pets (name, type) VALUES (' #{ @name }', '#{ @type }') RETURNING *;"
    pet = SqlRunner.run( sql ).first
    @id = pet['id'].to_i
  end





end