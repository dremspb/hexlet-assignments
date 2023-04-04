require 'faker'

10.times do
  Post.create(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraphs.join('\n\n'),
    summary: Faker::Lorem.sentence,
    published: [true, false].sample
  )
end