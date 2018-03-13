using GraphQL::Pro::Routes

Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  mount BlogSchema.dashboard, at: "/graphql/dashboard"
  mount BlogSchema.operation_store_sync, at: "/graphql/sync"
end
