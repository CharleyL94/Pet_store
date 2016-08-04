require( 'pg' )
require_relative('../db/sql_runner')

class Pet_Shops

  attr_reader(:id, :name, :address, :type)

  def initialize( options )
    @id = options[ 'id' ].to_i
    @name = options[ 'name' ]
    @address = options[ 'addess' ]
    @type = options[ 'type' ]
  end

  def save
    sql = "INSERT INTO pet_shops ( name, address, type ) VALUES ( '#{@name}', '#{@address}', '#{type}') RETURNING *;"
    pet_shops = SqlRunner.run( sql ).first
    @id = pet_shops['id'].to_i
  end



end