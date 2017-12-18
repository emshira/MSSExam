p "Seeding canvas questions"

CANVASQUESTIONSA = [
  {intro: "", question: "Please read and obey the following commands. CLOSE YOUR EYES", subject_id: Subject::LAN_CMD_ONE .id},

  {intro: "", question: "Please write a sentence. Write a sentence", subject_id: Subject::LAN_CMD_TWO.id},
]


CANVASQUESTIONSA.each do |question|
  Question.find_or_create_by(intro: question[:intro], question: question[:question], subject_id: question[:subject_id])
end



CANVASQUESTIONSB = [
  {intro: "", question: "Please copy the following drawing", subject_id: Subject::LAN_COPY.id},
]

CANVASQUESTIONSB.each do |question|
  Question.find_or_create_by(intro: question[:intro], question: question[:question], subject_id: question[:subject_id])
end

p "Created #{CanvasQuestionA.count} canvas questions A"
p "Created #{CanvasQuestionB.count} canvas questions B"
