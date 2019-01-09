5.times do
  Movie.create(
    title: Faker::Name.name,
    description: Faker::Movie.quote
  )
end
