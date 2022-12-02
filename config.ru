require 'sinatra/reloader'

require './app'
require './controller/test'

run Rack::URLMap.new({
  '/' => SampleSinatra,
  '/test' => Test
})
