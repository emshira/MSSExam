practitioner = Practitioner.new(
	first_name: Faker::Name.unique.first_name,
	last_name: Faker::Name.unique.last_name,
	identification: Faker::Number.number(5)
)
practitioner.save
