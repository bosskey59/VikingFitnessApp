# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Diet.create(protein:40, carbs:40, fat:20, diet_type:"bulking")
Diet.create(protein:60, carbs:20, fat:20, diet_type:"cutting")

sean = Viking.create(name:"Sean Huang", age: 26, weight:190.5, body_fat: 15, residence: "708 Main St. Houston, TX 77002", diet_id:1)
alex = Viking.create(name:"Alex Aguilar", age: 27, weight:240, body_fat: 45, residence: "717 Red Tails Dr. Austin, TX 78704", diet_id:2)

bball = Exercise.create(name:"bball", exercise_type:"cardio", time:60, calories:250.8)
run = Exercise.create(name:"running", exercise_type:"cardio", time:45, calories:200.8)

VikingExercise.create(viking:sean,exercise:run )
VikingExercise.create(viking:alex,exercise:bball )
