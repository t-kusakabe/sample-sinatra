require 'sinatra/reloader'

require './controller/home'
require './controller/test'

run Rack::URLMap.new({
  '/' => Home,
  '/test' => Test
})
