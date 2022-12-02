require './controller/base'

class Test < Base
  get '/' do
    'test controller!'
  end

  get '/:name' do
    "test controller. hello #{params[:name]}"
  end
end
