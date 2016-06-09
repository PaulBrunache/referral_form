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
