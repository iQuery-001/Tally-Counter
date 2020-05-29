# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


tsura = User.first
jeff = User.second
tony = User.third

tsura.tallies.build
tsura.tallies.first.content = "lol"
tsura.tallies.first.save

jeff.tallies.build
jeff.tallies.first.content = "idk"
jeff.tallies.first.save

tony.tallies.build
tony.tallies.first.content = "I have buddies in the marines"
tony.tallies.first.save

