module Types
  class QueryType < Types::BaseObject
    name 'Query'

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :allMovies do
      type types[Types::MovieType]
      description 'All movies'

      resolve-> (obj, args, ctx) {
        Movie.all
      }
    end

    field :movie do
      type Types::MovieType
      description 'A movie'
      argument :id, !types.ID
      resolve-> (obj, args, ctx) { Movie.find(args[:id]) }
    end
  end
end
