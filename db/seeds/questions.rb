p "Seeding questions"
QUESTIONS = [
  {intro: "What:", question: "What year is it?", subject: Subject::TEMP_TIME},
  {intro: "What:", question: "What month is it?", subject: Subject::TEMP_TIME},
  {intro: "What:", question: "What is todays date?", subject: Subject::TEMP_TIME},
  {intro: "What:", question: "What day of the week is it", subject: Subject::TEMP_TIME},
  {intro: "What:", question: "What is the season/ the time of year?", subject: Subject::TEMP_TIME},
  {intro: "Can you tell me:", question: " What State do you live in?", subject: Subject::SPA_PLACE},
  {intro: "Can you tell me:", question: "Which city/town do you live in?", subject: Subject::SPA_PLACE},
  {intro: "Can you tell me:", question: "What is the name of your County/ Suburb/ Province?", subject: Subject::SPA_PLACE},
  {intro: "Can you tell me:", question: "Where are we now (hospital/clinic)?", subject: Subject::SPA_PLACE},
  {intro: "Can you tell me:", question: "What is the floor/ward? ", subject: Subject::SPA_PLACE},
  {intro: "I am now going to test your memory:", question: "Name 3 objects. Ask them to repeat all 3. Ask them to remember these objects because they will be asked again later. For example: Keys, phone, table", subject: Subject::REG},
  {intro: "", question: "Subtract 7 from 100, then repeat, and continue five times. 100, 93, 86, 79, 65", subject: Subject::ATT_CALC},
  {intro: "", question: "Please repeat the 3 objects I asked you to remember earlier", subject: Subject::REG},
  {intro: "", question: "Please name these objects: For example: Point to a wristwatch and a pencil", subject: Subject::LAN_NAME},
  {intro: "", question: "Please repeat the following phrase: No ifs, ands or buts", subject: Subject::LAN_REP},
  {intro: "Please follow this command:", question: "Take this paper in your right hand, fold it in half and place it in your lap.", subject: Subject::LAN_COMPLEX},
  {intro: "", question: "Please read and obey the following commands. CLOSE YOUR EYES", subject: Subject::LAN_CMD_ONE},
  {intro: "", question: "Please write a sentence. Write a sentence", subject: Subject::LAN_CMD_TWO},
  {intro: "", question: "Please copy the following drawing", subject: Subject::LAN_COPY},
  {intro: "", question: "Please read and obey the following commands. CLOSE YOUR EYES", subject: Subject::LAN_CMD_ONE},
  {intro: "", question: "Please write a sentence. Write a sentence", subject: Subject::LAN_CMD_TWO},
  {intro: "", question: "Please copy the following drawing", subject: Subject::LAN_COPY}
]
QUESTIONS.each do |question|
  p question[:intro], question[:subject]
  Question.find_or_create_by!(intro: question[:intro], question: question[:question], subject: question[:subject])
end
p "Created #{Question.count} questions"
