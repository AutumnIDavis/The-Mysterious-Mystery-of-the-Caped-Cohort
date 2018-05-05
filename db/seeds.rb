

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

choices.each do |title, option, stage_id|
  Choice.create(title: title, option: option, stage_id: stage_id)
end
