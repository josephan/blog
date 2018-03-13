Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :post, Types::PostType do
    argument :id, !types.ID
    description "Find a Post by ID"
    resolve ->(obj, args, ctx) { Post.find(args["id"]) }
  end
end
