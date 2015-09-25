class Challenge < ActiveRecord::Base
  belongs_to :level
  belongs_to :category
  has_many :hints
  has_one  :answer

  validates_presence_of :name
  validates_presence_of :number
  validates_presence_of :description
  validates_presence_of :points
  validates_presence_of :level
end
