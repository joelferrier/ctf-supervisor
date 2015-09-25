class Scenario < ActiveRecord::Base
  has_many :levels
  validates_presence_of :name
  validates_presence_of :description
end
