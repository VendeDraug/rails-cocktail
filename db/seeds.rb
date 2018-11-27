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

tag1 = Tag.create!(
  name: "test"
)

spec1 = Spec.new(
  title: 'Building CRUD routes',
  description: 'Morgan is learning how to do basic CRUD actions again...',
  date: Date.today
)
spec1.user = user1
# spec1.tags = tag1
spec1.save!


tagging1 = Tagging.create!(
  tag: tag1,
  spec: spec1
)

user2 = User.create!(
  email: "test1@test.com",
  password: "123456"
)

tag2 = Tag.create!(
  name: "tags"
)

spec2 = Spec.new(
  title: 'Testing tags',
  description: 'Morgan is learning how to FILTER...',
  date: Date.today
)
spec2.user = user2
# spec2.tags = tag2
spec2.save!


tagging2 = Tagging.create!(
  tag: tag2,
  spec: spec2
)

user3 = User.create!(
  email: "test2@test.com",
  password: "123456"
)

tag3 = Tag.create!(
  name: "tags"
)

spec3 = Spec.new(
  title: 'Another test',
  description: 'Morgan is learning slowly ... very slowly...',
  date: Date.today
)
spec3.user = user3
# spec3.tags = tag3
spec3.save!


tagging3 = Tagging.create!(
  tag: tag3,
  spec: spec3
)

puts "All done!"
