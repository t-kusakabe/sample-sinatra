# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/json'

class BaseController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader

    Dir[File.join('.', '**', '*.rb')].each { |f| also_reload f }
  end

  set :show_exceptions, false
  error 404 do |e|
    json e.message
  end

  error 500 do |e|
    e.message
  end
end
