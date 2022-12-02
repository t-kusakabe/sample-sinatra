# frozen_string_literal: true

require './controller/home'
require './controller/test'

run Rack::URLMap.new({
                       '/' => Home,
                       '/test' => Test
                     })
