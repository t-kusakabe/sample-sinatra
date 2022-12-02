require './controller/base'

class Test < Base

  get '/' do
    'test controller!'
  end
end
