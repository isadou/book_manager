# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all

book2 = Book.new(title: "Les confessions", author: "Jean Jacques ROUSSEAU", year: 1769, price: "17", resume: "blablablabla blablabla")
book2.save!
book1 = Book.new(title: "Autant en emporte le vent", author: "Margareth MITCHELL", year: 1936, price: "12", resume: "blablablabla blablabla")
book1.save!
book3 = Book.new(title: "Une vie française", author: "Jean Paul Dubois", year: 2005, price: "11", resume: "blablablabla blablabla")
book3.save!
