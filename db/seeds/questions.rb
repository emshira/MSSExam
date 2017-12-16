p "Seeding questions"

QUESTIONS = [
  {intro: "What:", question: "What year is it?"},
  {intro: "What:", question: "What month is it?"},
  {intro: "What:", question: "What is todays date?"},
  {intro: "What:", question: "What day of the week is it"},
  {intro: "What:", question: "What is the season/ the time of year?"},
  {intro: "Can you tell me:", question: " What State do you live in?"},
  {intro: "Can you tell me:", question: "Which city/town do you live in?"},
  {intro: "Can you tell me:", question: "What is the name of your County/ Suburb/ Province?"},
  {intro: "Can you tell me:", question: "Where are we now (hospital/clinic)?"},
  {intro: "Can you tell me:", question: "What is the floor/ward? "},
  {intro: "I am now going to test your memory:", question: "Name 3 objects. Ask them to repeat all 3. Ask them to remember these objects because they will be asked again later. Keys, phone, table"},
  {intro: "", question: "Subtract 7 from 100, then repeat, and continue five times. 100, 93, 86, 79, 65"},
  {intro: "", question: "Please repeat the 3 objects I asked you to remember"},
  {intro: "", question: "Please name these objects: Point to a wristwatch and a pencil"},
  {intro: "", question: "Please repeat the following phrase: No ifs, ands or buts"},
  {intro: "Please follow this command:", question: "Take this paper in your right hand, fold it in half and place it in your lap."},
  {intro: "", question: "Please read and obey the following commands. CLOSE YOUR EYES"},
  {intro: "", question: "Please write a sentence. Write a sentence"},
  {intro: "", question: "Please copy the following drawing"},
]







QUESTIONS.each do |question|
  Question.find_or_create_by(intro: question[:intro], question: question[:question])
end
