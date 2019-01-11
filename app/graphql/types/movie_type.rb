module Types
  class MovieType < Types::BaseObject
    graphql_name 'Movie'

    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
  end
end
