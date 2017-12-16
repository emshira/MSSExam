p "Seeding questions"

QUESTIONS = [
  {intro: "What:", question: "What year is it?", subject_id: Subject::TEMP_TIME.id},
  {intro: "What:", question: "What month is it?", subject_id: Subject::TEMP_TIME.id},
  {intro: "What:", question: "What is todays date?", subject_id: Subject::TEMP_TIME.id},
  {intro: "What:", question: "What day of the week is it", subject_id: Subject::TEMP_TIME.id},
  {intro: "What:", question: "What is the season/ the time of year?", subject_id: Subject::TEMP_TIME.id},

  {intro: "Can you tell me:", question: " What State do you live in?", subject_id: Subject::SPA_PLACE.id},
  {intro: "Can you tell me:", question: "Which city/town do you live in?", subject_id: Subject::SPA_PLACE.id},
  {intro: "Can you tell me:", question: "What is the name of your County/ Suburb/ Province?", subject_id: Subject::SPA_PLACE.id},
  {intro: "Can you tell me:", question: "Where are we now (hospital/clinic)?", subject_id: Subject::SPA_PLACE.id},
  {intro: "Can you tell me:", question: "What is the floor/ward? ", subject_id: Subject::SPA_PLACE.id},

  {intro: "I am now going to test your memory:", question: "Name 3 objects. Ask them to repeat all 3. Ask them to remember these objects because they will be asked again later. For example: Keys, phone, table", subject_id: Subject::REG.id},

  {intro: "", question: "Subtract 7 from 100, then repeat, and continue five times. 100, 93, 86, 79, 65", subject_id: Subject::ATT_CALC.id},

  {intro: "", question: "Please repeat the 3 objects I asked you to remember earlier", subject_id: Subject::REC.id},

  {intro: "", question: "Please name these objects: For example: Point to a wristwatch and a pencil", subject_id: Subject::LAN_NAME.id},

  {intro: "", question: "Please repeat the following phrase: No ifs, ands or buts", subject_id: Subject::LAN_REP.id},

  {intro: "Please follow this command:", question: "Take this paper in your right hand, fold it in half and place it in your lap.", subject_id: Subject::LAN_COMPLEX.id},

  {intro: "", question: "Please read and obey the following commands. CLOSE YOUR EYES", subject_id: Subject::LAN_CMD_ONE .id},

  {intro: "", question: "Please write a sentence. Write a sentence", subject_id: Subject::LAN_CMD_TWO.id},

  {intro: "", question: "Please copy the following drawing", subject_id: Subject::LAN_COPY.id},
]



QUESTIONS.each do |question|
  Question.find_or_create_by(intro: question[:intro], question: question[:question], subject_id: question[:subject_id])
end
