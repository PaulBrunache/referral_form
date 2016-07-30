# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create(email:'lol@example.com', password:'12345678', password_confirmation:'12345678')

3.times do
  Department.create(name:  (1..8).map{|i| ('a'..'z').to_a[rand(26)]}.join)
end
3.times do
  Position.create(name:  (1..8).map{|i| ('a'..'z').to_a[rand(26)]}.join,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
  when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
  It has survived not only five centuries, but also the leap into electronic typesetting,
  remaining essentially unchanged.")
end

