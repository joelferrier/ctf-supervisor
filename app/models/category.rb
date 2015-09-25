class Category < ActiveRecord::Base
  has_many :challenges

  validates_presence_of :name
end
