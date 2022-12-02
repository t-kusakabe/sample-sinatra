require './controller/base'

class SampleSinatra < Base
  get '/' do
    'hello world!'
  end
end
