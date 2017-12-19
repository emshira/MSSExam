patient = Patient.create(
	first_name: Faker::Name.unique.first_name,
	last_name: Faker::Name.unique.last_name,
)
practitioner = Practitioner.find_or_create_by!(
	first_name: Faker::Name.unique.first_name,
	last_name: Faker::Name.unique.last_name,
	identification: Faker::Number.number(5),
	patient_id: patient,
)
p practitioner

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
  subject = Subject.create(title: subject[:title])
  p subject
end


p "Created #{Subject.count} subjects"
