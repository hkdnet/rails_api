class API < Grape::API
  mount API::Users => '/users'

  add_swagger_documentation(
    hide_documentation_path: true
  )
end
