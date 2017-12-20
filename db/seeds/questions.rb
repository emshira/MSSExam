p "Seeding questions"

QUESTIONS = [
  {intro: "What:", question: "What year is it?", subject: Subject.temp_time},

  {intro: "What:", question: "What month is it?", subject: Subject.temp_time},
  {intro: "What:", question: "What is todays date?", subject: Subject.temp_time},
  {intro: "What:", question: "What day of the week is it", subject: Subject.temp_time},
  {intro: "What:", question: "What is the season/ the time of year?", subject: Subject.temp_time},

  {intro: "Can you tell me:", question: " What State do you live in?", subject: Subject.spa_place},
  {intro: "Can you tell me:", question: "Which city/town do you live in?", subject: Subject.spa_place},
  {intro: "Can you tell me:", question: "What is the name of your County/ Suburb/ Province?", subject: Subject.spa_place},
  {intro: "Can you tell me:", question: "Where are we now (hospital/clinic)?", subject: Subject.spa_place},
  {intro: "Can you tell me:", question: "What is the floor/ward? ", subject: Subject.spa_place},

  {intro: "I am now going to test your memory:", question: "Name 3 objects. Ask them to repeat all 3. Ask them to remember these objects because they will be asked again later. For example: Keys, phone, table", subject: Subject.reg},

  {intro: "", question: "Subtract 7 from 100, then repeat, and continue five times. 100, 93, 86, 79, 65", subject: Subject.att_calc},

  {intro: "", question: "Please repeat the 3 objects I asked you to remember earlier", subject: Subject.rec},

  {intro: "", question: "Please name these objects: For example: Point to a wristwatch and a pencil", subject: Subject.lan_name},

  {intro: "", question: "Please repeat the following phrase: No ifs, ands or buts", subject: Subject.lan_rep},

  {intro: "Please follow this command:", question: "Take this paper in your right hand, fold it in half and place it in your lap.", subject: Subject.lan_complex},


  {intro: "", question: "Please read and obey the following commands. CLOSE YOUR EYES", subject: Subject.lan_cmd_one},

  {intro: "", question: "Please write a sentence. Write a sentence", subject: Subject.lan_cmd_two},

  {intro: "", question: "Please copy the following drawing", subject: Subject.lan_copy},

  {intro: "", question: "Please read and obey the following commands. CLOSE YOUR EYES", subject: Subject.lan_cmd_one},

  {intro: "", question: "Please write a sentence. Write a sentence", subject: Subject.lan_cmd_two},

  {intro: "", question: "Please copy the following drawing", subject: Subject.lan_copy}
]



QUESTIONS.each do |question|
  p question[:intro], question[:subject]
  Question.find_or_create_by!(intro: question[:intro], question: question[:question], subject: question[:subject])
end


p "Created #{Question.count} questions"
