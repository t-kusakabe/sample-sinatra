require 'sinatra/base'
require 'sinatra/reloader'

class SampleSinatra < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'hello world!'
  end
end
