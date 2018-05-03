# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 scrollz = "A murder has been commited"

description = "The Who-Dunnit of Who-dunnits "

stages = [""]

choices = ["","","","","","","","","","","","","","","",""]


user= User.create(user_name:"admin", email:
"admin@mail.com", password: "1111111",
password_conformation: "1111111")

Adventure.create(title: adventure, synopsis: synopsis, image: Rack::Test::UploadedFile.new(Rails.root + 'app/assets/images/Bristol.jpeg', 'image/jpeg'), user_id: user.id)




scrollz = Scrollz.where(title: "A murder has been commited").first

Stage.create(description: stages[0], scrollz_id: scrollz.id)

Stage.create(description: stages[1], scrollz_id: scrollz.id, parent_choice_id: 1)

Stage.create(description: stages[2], scrollz_id: scrollz.id, parent_choicestages
Stage.create(description: stages[3], scrollz_id: scrollz.id, parent_choice_id: 3)

Stage.create(description: stages[4], scrollz_id: scrollz.id, parent_choice_id: 4)

Stage.create(description: stages[5], scrollz_id: scrollz.id, parent_choice_id: 5)

Stage.create(description: stages[6], scrollz_id: scrollz.id, parent_choice_id: 6)

Stage.create(description: stages[7], scrollz_id: scrollz.id, parent_choice_id: 7)

Stage.create(description: stages[8], scrollz_id: scrollz.id, parent_choice_id: 9)

Stage.create(description: stages[7], scrollz_id: scrollz.id, parent_choicscrollz
Stage.create(description: stages[8], scrollz_id: scrollz.id, parent_choice_id: 10)

Stage.create(description: stages[9], scrollz_id: scrollz.id, parent_choice_id: 11)

Stage.create(description: stages[10], scrollz_id: scrollz.id, parent_choice_id: 12)

Stage.create(description: stages[9], scrollz_id: scrollz.id, parent_choice_id: 13)

Stage.create(description: stages[10], scrollz_id: scrollz.id, parent_choice_id: 14)







Choice.create(option: choices[0], stage_id: 1)

Choice.create(option: choices[1], stage_id: 1)

Choice.create(option: choices[2], stage_id: 2)

Choice.create(option: choices[3], stage_id: 2)

Choice.create(option: choices[4], stage_id: 3)

Choice.create(option: choices[5], stage_id: 3)

Choice.create(option: choices[6], stage_id: 5)

Choice.create(option: choices[6], stage_id: 6)

Choice.create(option: choices[7], stage_id: 5)

Choice.create(option: choices[7], stage_id: 6)

Choice.create(option: choices[8], stage_id: 8)

Choice.create(option: choices[9], stage_id: 8)

Choice.create(option: choices[8], stage_id: 10)

Choice.create(option: choices[9], stage_id: 10)






Choice.create(option: "Start", stage_id: nil)
