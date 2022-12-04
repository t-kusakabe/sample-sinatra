require 'sinatra/base'

class Environment < Sinatra::Base
  set :environment, ENV['RACK_ENV'].to_sym
end
