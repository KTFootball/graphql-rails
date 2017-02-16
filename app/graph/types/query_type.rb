QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :user do
    type AuthorType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Author.find(args[:id])
    }
  end
  field :blog do
    type BlogType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Blog.find(args[:id])
    }
  end

  field :authors do
    type !types[!AuthorType]
    resolve -> (obj, args, ctx) do
      Author.all
    end
  end
  field :blogs do
    type !types[!BlogType]
    resolve -> (obj, args, ctx) do
      Blog.all
    end
  end
end
