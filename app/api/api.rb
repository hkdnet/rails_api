class API < Grape::API
  mount API::Users => '/users'

  add_swagger_documentation(
    base_path: '/',
    hide_documentation_path: true
  )
end
