# frozen_string_literal: true

require './model/application_record'

class Test < ApplicationRecord
  validates :name, presence: true
  validates :count, presence: true

  def self.foo
    'foo'
  end
end
