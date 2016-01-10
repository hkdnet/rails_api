class Users < Grape::API
  desc 'get all users'
  get '/' do
    present User.all, with: API::Entities::User
  end
end

module Entities
  class User < Grape::Entity
    expose :name
  end
end
