# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a1 = Dish.create(name: "Green Salat", description: "Cucumbers, Tomatoes, Iceberg, Feta, Olive oil", image: "", course_name: "first course")

a2 = Dish.create(name: "New salat Boom", description: "Rad Papper, Sparja, Cucumber", image: "", course_name: "first course")

a3 = Dish.create(name: "Sparja Salat", description: "Sparja, Black Papper, Cucumber", image: "", course_name: "first course")

a4 = Dish.create(name: "Fried Potato", description: "Potato, Onion, Green, Oil", image: "", course_name: "main course")

a5 = Dish.create(name: "Fish Salat", description: "Fish, Black Papper, Tomatoes, Green, Feta", image: "", course_name: "first course")

a6 = Dish.create(name: "Pizza", description: "Mozzarella, Parmesan, Cheddar, Cherry, Bell pepper", image: "", course_name: "main course")

a7 = Dish.create(name: "Coffee Cappucino", description: "220 ml", image: "", course_name: "drink")
a8 = Dish.create(name: "Coffee Latte", description: "300 ml", image: "", course_name: "drink")
a9 = Dish.create(name: "Juice", description: "Orange, Apple, Papaya Banana, Strawberry", image: "", course_name: "drink")
a10 = Dish.create(name: "Veg Stew", description: "Panner, Zucchini, Carrot, Onion, Tomatoes", image: "", course_name: "main course")


d1 = Day.create(weekday: "Monday", month: "September", year: "2020")
d2 = Day.create(weekday: "Tuesday", month: "September", year: "2020")
d3 = Day.create(weekday: "Wednesday", month: "September", year: "2020")
d4 = Day.create(weekday: "Thursday", month: "September", year: "2020")
d5 = Day.create(weekday: "Friday", month: "September", year: "2020")
d6 = Day.create(weekday: "Saturday", month: "September", year: "2020")
d7 = Day.create(weekday: "Sunday", month: "September", year: "2020")

c1 = Course.create(day_id:d1.id, dish_id:a2.id, name: "first course")
c2 = Course.create(day_id:d2.id, dish_id:a1.id, name: "first course")
c3 = Course.create(day_id:d1.id, dish_id:a3.id, name: "first course")
c4 = Course.create(day_id:d1.id, dish_id:a4.id, name: "main course")
c5 = Course.create(day_id:d2.id, dish_id:a5.id, name: "first course")
с6 = Course.create(day_id:d2.id, dish_id:a6.id, name: "main course")
с7 = Course.create(day_id:d1.id, dish_id:a7.id, name: "drink")
с8 = Course.create(day_id:d1.id, dish_id:a8.id, name: "drink")
с9 = Course.create(day_id:d1.id, dish_id:a9.id, name: "drink")
с10 = Course.create(day_id:d1.id, dish_id:a10.id, name: "main course")
с11 = Course.create(day_id:d2.id, dish_id:a7.id, name: "drink")
с12 = Course.create(day_id:d2.id, dish_id:a8.id, name: "drink")
с13 = Course.create(day_id:d2.id, dish_id:a9.id, name: "drink")