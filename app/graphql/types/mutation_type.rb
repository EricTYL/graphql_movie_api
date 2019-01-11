module Types
  class MutationType < Types::BaseObject
    graphql_name 'Mutation'

    field :create_movie, Types::MovieType, null: false do
      argument :title, String, required: true
      argument :description, String, required: true
    end

    def create_movie(title:, description:)
      Movie.create(
        title: title,
        description: description
      )
    end
  end
end
