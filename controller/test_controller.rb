# frozen_string_literal: true

require './controller/base_controller'

class TestController < BaseController
  get '/' do
    Test.foo
  end

  get '/:name' do
    "test controller. hello #{params[:name]}"
  end
end
