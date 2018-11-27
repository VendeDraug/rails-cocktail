# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spec.destroy_all

spec1 = Spec.create!(
  title: 'Building CRUD routes',
  description: 'Morgan is learning how to do basic CRUD actions again...',
)

tag1 = Tag.create!(
  name: "test"
)

tagging1 = Tagging.create!(
  tag: tag1,
  spec: spec1
)

puts "All done!"
