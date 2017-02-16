module AuthorMutations

  Create = GraphQL::Field.define do
    type -> { AuthorType }
    description 'create a author'

    argument :name, !types.String

    resolve -> (obj, input_fields, ctx)  do
      Author.create(name: input_fields['name'])
    end
  end

end