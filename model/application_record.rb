# frozen_string_literal: true

require 'active_record'

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  ActiveRecord::Base.configurations = YAML.load(ERB.new(File.read('./config/database.yml')).result)
  ActiveRecord::Base.establish_connection(:development)
end
