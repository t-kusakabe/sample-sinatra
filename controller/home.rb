require './controller/base'

class Home < Base
  get '/' do
    'hello world!!'
  end
end
