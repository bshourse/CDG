# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a1 = Dish.create(name: "Green Salat", description: "Cucumbers, Tomatoes, Iceberg, Feta, Olive oil", image: "")

a2 = Dish.create(name: "New salat Boom", description: "Rad Papper, Sparja, Cucumber", image: "")

d1 = Day.create(weekday: "Monday", month: "September", year: "2020")
d2 = Day.create(weekday: "Tuesday", month: "September", year: "2020")
d3 = Day.create(weekday: "Wednesday", month: "September", year: "2020")
d4 = Day.create(weekday: "Thursday", month: "September", year: "2020")
d5 = Day.create(weekday: "Friday", month: "September", year: "2020")
d6 = Day.create(weekday: "Saturday", month: "September", year: "2020")
d7 = Day.create(weekday: "Sunday", month: "September", year: "2020")

c1 = Course.create(day_id:d1.id, dish_id:a2.id, name: "first course")
c2 = Course.create(day_id:d2.id, dish_id:a1.id, name: "first course")