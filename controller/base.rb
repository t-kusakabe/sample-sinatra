require 'sinatra/base'
require 'sinatra/reloader'

class Base < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
end
