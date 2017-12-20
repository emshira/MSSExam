p "Seeding canvas questions"
CANVASQUESTIONSA = [
  {intro: "", question: "Please read and obey the following commands. CLOSE YOUR EYES", subject: Subject::LAN_CMD_ONE},
  {intro: "", question: "Please write a sentence. Write a sentence", subject: Subject::LAN_CMD_TWO},
]
CANVASQUESTIONSA.each do |question|
  Question.find_or_create_by(intro: question[:intro], question: question[:question], subject: question[:subject])
end
CANVASQUESTIONSB = [
  {intro: "", question: "Please copy the following drawing", subject: Subject::LAN_COPY},
]
CANVASQUESTIONSB.each do |question|
  Question.find_or_create_by(intro: question[:intro], question: question[:question], subject: question[:subject])
end
p "Created #{CanvasQuestionA.count} canvas questions A"
p "Created #{CanvasQuestionB.count} canvas questions B"
