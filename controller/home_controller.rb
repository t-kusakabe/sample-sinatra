# frozen_string_literal: true

require './controller/base_controller'

class HomeController < BaseController
  get '/' do
    json 'hello world!!'
  end
end
