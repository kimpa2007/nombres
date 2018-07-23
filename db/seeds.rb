# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

=begin
3.times do
	nombre = Nombre.create(
		nombre: Faker::Name.first_name,
		caracteristica: Faker::Name.last_name,
	)

	nombre.nacionalidads.create(
		nombre: Faker::Nation.nationality,
		caracteristica: Faker::Nation.language )

end
=end


3.times do
	nacionalidad = Nacionalidad.create(
		nombre: Faker::Nation.nationality,
		#caracteristica: Faker::Nation.language,
	)
end