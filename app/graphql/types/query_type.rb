module Types
  class QueryType < Types::BaseObject
    graphql_name 'Query'

    field :all_movies, [Types::MovieType, null: true], null: false do
      description 'All movies'
    end

    field :movie, Types::MovieType, null: false do
      description 'A movie'
      argument :id, ID, required: true
    end

    def movie(id:)
      Movie.find(id)
    end

    def all_movies
      Movie.all
    end
  end
end
