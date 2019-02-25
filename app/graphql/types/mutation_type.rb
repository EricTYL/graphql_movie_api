module Types
  class MutationType < Types::BaseObject
    graphql_name 'Mutation'

    field :create_movie, Types::MovieType, null: false do
      description 'Add a movie'
      argument :title, String, required: true
      argument :description, String, required: true
    end

    field :add_a_review_for_the_movie, Types::ReviewType, null: false do
      description 'Add a review for the movie'
      argument :movie_id, ID, required: true
      argument :content, String, required: true
    end

    def create_movie(title:, description:)
      Movie.create(
        title: title,
        description: description
      )
    end

    def add_a_review_for_the_movie(movie_id:, content:)
      Review.create(
        movie_id: movie_id,
        content: content
      )
    end
  end
end
