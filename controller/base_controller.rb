# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/json'
require 'logger'
require_relative '../helper/logger_helper'

class BaseController < Sinatra::Base
  configure :development do
    require 'pry'
    register Sinatra::Reloader

    Dir[File.join('.', '**', '*.rb')].each { |f| also_reload f }
  end

  configure :development, :production do
    enable :logging
    logger = Logger.new($stdout)
    set :logger, logger
  end

  set :show_exceptions, false
  error 404 do |e|
    logger.error "Error: #{e.message}"
    json e.message
  end

  error 500 do |e|
    logger.error "Error: #{e.message}"
    e.message
  end

  helpers LoggerHelper
end
