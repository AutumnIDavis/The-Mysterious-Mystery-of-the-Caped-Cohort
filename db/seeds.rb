

scrollz = "MURDER"

description= "Whats really happening on that 8th floor"

 stages =[
   "You walk into the classrom to ask a question",
   "you see a few rubber ducks scattered about the room ",
    "CLayton is on a conference call ",
    "You realize you havent eaten all day and walk to the store",
    "Frida and Shiv are arguing but you jusy ignore it ",
    "Hide in 806 with Bri! and get some work done",
    "Time to pack up for thew day and go home"]


choices =[
 "ask questions",
   "find clues",
    "go home",
    "get another job",
    "mind your buisiness",
   "Hide in 806 with Bri!"]

user = User.create(user_name: "admin", email: "admin@mail.com", password: "111111", password_confirmation: "111111")


Scrollz.create(title: scrollz, description: description , user_id: user.id)

scrollz = Scrollz.where(title: "There has been a MURDER").first

Stage.create(description: stages[0], scrollz_id: scrollz_id)

Stage.create(description: stages[1], scrollz_id: scrollz_id)

Stage.create(description: stages[2], scrollz_id: scrollz_id)

Stage.create(description: stages[3], scrollz_id: scrollz_id)

Stage.create(description: stages[4], scrollz_id: scrollz_id)

Stage.create(description: stages[5], scrollz_id: scrollz_id)

Stage.create(description: stages[6], scrollz_id: scrollz_id)





Scrollz.create(option: "Start",


scrollz = Scrollz.where(title: "murder").first

Stage.create(description: stage[0], scrollz_id: scrollz_id)
Stage.create(description: stage[1], scrollz_id: scrollz_id)
Stage.create(description: stage[2], scrollz_id: scrollz_id)
Stage.create(description: stage[3], scrollz_id: scrollz_id)
Stage.create(description: stage[4], scrollz_id: scrollz_id)
Stage.create(description: stage[5], scrollz_id: scrollz_id)
Stage.create(description: stage[6], scrollz_id: scrollz_id)
Stage.create(description: stage[7], scrollz_id: scrollz_id)




Choice.create(option: choices[0], scrollz_id: 1)

Choice.create(option: choices[1], scrollz_id: 1)

Choice.create(option: choices[2], scrollz_id: 2)

Choice.create(option: choices[3], scrollz_id: 2)

Choice.create(option: choices[4], scrollz_id: 3)

Choice.create(option: choices[5], scrollz_id: 3)

Choice.create(option: choices[4], scrollz_id: 4)

Choice.create(option: choices[0], scrollz_id: 4)

Choice.create(option: choices[4], scrollz_id: 5)

Choice.create(option: choices[0], scrollz_id: 5)


Choice.create(option: "Start", scrollz_id: nil)
