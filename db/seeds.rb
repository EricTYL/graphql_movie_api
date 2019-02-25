movies = Faker::Movies.constants.select do |c|
  Faker::Movies.const_get(c).is_a? Class
end

5.times do |i|
  movie_id = i + 1
  Movie.create(
    id: movie_id,
    title: movies[i],
    description: Faker::Movie.quote
  )
  3.times do
    Review.create(
      movie_id: movie_id,
      content: Faker::Movies::HarryPotter.quote
    )
  end
end
