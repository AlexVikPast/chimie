Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  root to: 'chemical_element#index', to: redirect('/chemical_element')
  resources :chemical_element, :only => [:index, :show]
end
