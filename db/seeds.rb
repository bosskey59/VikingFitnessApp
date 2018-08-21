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




ivar = Viking.create(name: "Ivar the Boneless", age: 26, weight: 175, body_fat: 10, residence: "The Great Heathen Army", calories: 2500, image_url: "https://em.wattpad.com/c984052977f02b92013020d0ef3637dba0fb4dba/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f7a487647714836754147446476413d3d2d3533373330383334332e313531343937303766633961653730393639313533303039303337352e676966?s=fit&w=720&h=720", diet_id: 1)
ragnar = Viking.create(name: "Ragnar Lothbrok", age: 40, weight: 190, body_fat: 15, residence: "Kattegat, Norway", calories: 3000, image_url: "https://i.imgur.com/VQmBgbN.gif", diet_id: 2)
lagertha = Viking.create(name: "Lagertha", age: 35, weight: 150, body_fat: 15, residence: "Kattegat, Norway", calories: 2500, image_url: "https://i.imgur.com/SdxkM4u.gif", diet_id: 1)
rollo = Viking.create(name: "Rollo Sigurdsson", age: 55, weight: 210, body_fat: 20, residence: "Normandy, West Francia", calories: 3500, image_url: "https://i.imgur.com/wByUzTr.gif", diet_id: 2)
bjorn = Viking.create(name: "Björn Ironside Ragnarsson", age: 35, weight: 220, body_fat: 12, residence: "Kattegat, Norway", calories: 4000, image_url: "https://i.imgur.com/bdVOjco.gif", diet_id: 1)
heahmund = Viking.create(name: "Bishop Heahmund", age: 40, weight: 190, body_fat: 12, residence: "Wessex, England", calories: 2500, image_url: "https://i.imgur.com/MxLgCCi.gif", diet_id: 2)



