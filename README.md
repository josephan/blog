## Dependecies
```ruby
ruby "2.4.1"

gem 'rails', '~> 5.1.5'
gem 'graphql', '~> 1.7.13'

source 'https://<YOUR-SECRET-URL>@gems.graphql.pro/' do
  gem 'graphql-pro', '1.6.5'
end
```

## Steps To Reproduce
1. `$ git clone git@github.com:josephan/blog.git && cd blog`
2. change source for `graphql-pro` in `Gemfile` to your secret url
3. `$ bundle`
4. `$ yarn global add graphql-ruby-client`
5. `$ rails db:create`
6. `$ rails db:migrate`
7. `$ rails db:seed`
8. `$ rails server`
9. visit `localhost:3000/graphql/dashboard` and create a client called `test`
10. get the new client `test`'s secret
11. sync the queries with `$ graphql-ruby-client sync --path=app/graphql/queries --url=http://localhost:3000/graphql/sync --client=test --secret=<CLIENT-SECRET>`
12. send a persisted query `POST` request:
```json
POST: http://localhost:3000/graphql
BODY:

{
  "operationName": "test/32e6b8ae2c981c5897af13c5072ac6a1",
  "variables": {
    "id": 1
  }
}
```
 

