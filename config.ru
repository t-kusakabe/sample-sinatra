# frozen_string_literal: true

Dir[File.expand_path('./controller/*', __dir__)].sort.each { |f| require f }
Dir[File.expand_path('./model/*', __dir__)].sort.each { |f| require f }

run Rack::URLMap.new({
                       '/' => HomeController,
                       '/test' => TestController
                     })
