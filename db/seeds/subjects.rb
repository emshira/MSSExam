p "Seeding subjects"

SUBJECTS = [
  {title: "Temporal Orientation to time"},
  {title: "Spatial Orientation to place"},
  {title: "Registration"},
  {title: "Attention and Calculation"},
  {title: "Recall"},
  {title: "Language - Naming"},
  {title: "Language - Repetition"},
  {title: "Language - Follow complex command"},
  {title: "Language - Follow command 1"},
  {title: "Language - Follow command 2"},
  {title: "Language - Follow command and Copy"},
]


SUBJECTS.each do |subject|
  Subject.find_or_create_by!(title: subject[:title])
end


p "Created #{Subject.count} subjects"
