module Entities
  class User < Grape::Entity
    expose :name
  end
end

class Users < Grape::API
  desc 'get all users', entity: Entities::User
  get '/all' do
    present User.all, with: Entities::User
  end
end
