# README

This is a simple demo on using graphql in rails project.

## Setup

1. Clone this repo    
2. `bundle install`    
3. `rails db:migrate`    
4. `rails db:seed`    
5. `rails s`    
6. `open localhost:3000`    

## Play

In browser, you can input some query like below: 

```javascript
query {
  authors: {
    id
    name
  }
}

query {
  author(id: 1){
    id
    name
    blogs{
      title
      content
    }
  }
}
// or use mutation to create a author
mutation {
  CreateAuthor(name: "banana") {
    id
    name
  }
}
```
