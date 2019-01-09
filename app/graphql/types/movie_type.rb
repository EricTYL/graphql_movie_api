module Types
  class MovieType < Types::BaseObject
    name "Movie"

    field :id, !types.ID
    field :title, !types.String
    field :description, types.String
  end
end
