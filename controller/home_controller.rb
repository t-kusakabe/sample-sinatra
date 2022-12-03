# frozen_string_literal: true

require './controller/base_controller'

class HomeController < BaseController
  get '/' do
    'hello world!!'
  end
end
