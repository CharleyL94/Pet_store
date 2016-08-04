require_relative('./models/pet_shops')
require_relative('./models/pets')

require( 'pry-byebug' ) 

pet1 = Pet.new( {'name' => 'Charley', 'type' => 'Angel Fish'} )
pet1.save 

pet2 = Pet.new( {'name' => 'Hamish', 'type' => 'Clown Fish'} )
pet2.save 

pet_shop1 = Pet_Shops.new( { 'name' => 'The CodFather', 'address' => '1 Bowl Street', 'type' => 'Fish' } )
pet_shop1.save


binding.pry
nil