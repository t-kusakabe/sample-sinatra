# frozen_string_literal: true

require './controller/base_controller'

class TestController < BaseController
  get '/' do
    json Test.foo
  end

  post '/' do
    test = Test.create!(name: params[:name])
    json test
  end

  get '/:name' do
    json "test controller. hello #{params[:name]}"
  end
end
