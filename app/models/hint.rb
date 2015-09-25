class Hint < ActiveRecord::Base
  belongs_to :challenge

  validates_presence_of :message
  validates_presence_of :points
end
