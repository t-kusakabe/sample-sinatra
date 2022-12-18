# frozen_string_literal: true

require 'psych'
require 'active_record'

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  ActiveRecord::Base.configurations = Psych.load(ERB.new(File.read('./config/database.yml')).result)
  ActiveRecord::Base.establish_connection(ENV['RACK_ENV'].to_sym)
end
