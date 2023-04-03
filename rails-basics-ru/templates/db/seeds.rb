require 'faker'

10.times do
  Task.create(
    name: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.paragraph,
    status: "new",
    performer: Faker::Name.name,
    completed: false
  )
end