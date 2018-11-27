# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spec.destroy_all
Tag.destroy_all
Tagging.destroy_all
User.destroy_all

user1 = User.create!(
  email: "test@test.com",
  password: "123456"
)

spec1 = Spec.new(
  title: 'Building CRUD routes',
  description: 'Morgan is learning how to do basic CRUD actions again...',
)
spec1.user = user1
spec1.save!

tag1 = Tag.create!(
  name: "test"
)

tagging1 = Tagging.create!(
  tag: tag1,
  spec: spec1
)

puts "All done!"
