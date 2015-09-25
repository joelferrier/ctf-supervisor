class Level < ActiveRecord::Base
  belongs_to :scenario
  has_many :challenges

  validates_presence_of :description
  validates_presence_of :number
  validates_presence_of :scenario
end
