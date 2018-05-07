

 stages =[
   "ask questions",
   "find clues",
    "go home",
    "get another job",
    "mind your buisiness",
    "Hide in 806 with Bri!",
    "Introduce yourself"

]
stages.each do |description|

Stage.create(description: description)
end


choices =[
   ["title", "ask questions", 1],
   ["find clues"],
   [ "go home"],
   [ "get another job"],
   [ "mind your buisiness"],
   [ "Hide in 806 with Bri!"],
   [ "Introduce yourself"]

]






scrollz = "MURDER"




description= "Whats really happening on that 8th floor"




stages= ["","","","","","","","","","","",""]







choices = ["Go Home For the Day",

           "TAKE A BREAK",

           "Disembark the train.",

           "Yell in fear.",

           "go to break room .",

           "go to classroom.",

           "search for clues",

           "accuse______.",

           "talk to Joe.",

           "To be continued."]



 admin=User.new({ name: "Admin", email: 's.wylie43@gmail.com',
               password: 'password', password_confirmation: 'password'})

    admin.toggle!(:admin)

    if admin.valid?
      admin.save()

    elsif admin.errors.any?
      admin.errors.full_messages.each do |msg|
        puts msg
      end
    else
      puts "****NOT VALID****"
    end









scrollz = Scrollz.where(title: "There has been a MURDER").first

Stages.create(description: stages[0], scrollz_id: scrollz_id)

Stages.create(description: stages[1], scrollz_id: scrollz_id, [1])

Stages.create(description: stages[2], scrollz_id: scrollz_id, [2])

Stages.create(description: stages[3], scrollz_id: scrollz_id, [3])

Stages.create(description: stages[4], scrollz_id: scrollz_id, [4])

Stages.create(description: stages[5], scrollz_id: scrollz_id, [5])

Stages.create(description: stages[6], scrollz_id: scrollz_id, [6])

Stages.create(description: stages[7], scrollz_id: scrollz_id, [7])

Stages.create(description: stages[8], scrollz_id: scrollz_id, [9])

Stages.create(description: stages[7], scrollz_id: scrollz_id, [8])

Stages.create(description: stages[8], scrollz_id: scrollz_id, [10])

Stages.create(description: stages[9], scrollz_id: scrollz_id, [11])

Stages.create(description: stages[10], scrollz_id: scrollz_id, [12])

Stages.create(description: stages[9], scrollz_id: scrollz_id, [13])

Stages.create(description: stages[10], scrollz_id: scrollz_id, [14])







Choice.create(option: choices[0], chapter_id: 1)

Choice.create(option: choices[1], chapter_id: 1)

Choice.create(option: choices[2], chapter_id: 2)

Choice.create(option: choices[3], chapter_id: 2)

Choice.create(option: choices[4], chapter_id: 3)

Choice.create(option: choices[5], chapter_id: 3)

Choice.create(option: choices[6], chapter_id: 5)

Choice.create(option: choices[6], chapter_id: 6)

Choice.create(option: choices[7], chapter_id: 5)

Choice.create(option: choices[7], chapter_id: 6)

Choice.create(option: choices[8], chapter_id: 8)

Choice.create(option: choices[9], chapter_id: 8)

Choice.create(option: choices[8], chapter_id: 10)

Choice.create(option: choices[9], chapter_id: 10)




Choice.create(option: "Start", chapter_id: nil)















choices.each do |title, option, stage_id|
  Choice.create(title: title, option: option, stage_id: stage_id)
end
