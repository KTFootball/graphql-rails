AuthorType = GraphQL::ObjectType.define do
  name "Author"
  description "A Author"
  field :id, types.ID
  field :name, types.String
  field :blogs, -> { types[!BlogType] }
end