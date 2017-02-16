MutationType = GraphQL::ObjectType.define do
  name "Mutation"
  description "A Mutation"
  field :CreateAuthor, field: AuthorMutations::Create
end