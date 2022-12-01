require 'sinatra/base'

class SampleSinatra < Sinatra::Base
  get '/' do
    'hello world!'
  end
end
