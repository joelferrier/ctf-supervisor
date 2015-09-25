class Answer < ActiveRecord::Base
  belongs_to :challenge

  validates_presence_of :solution_type
  validates_presence_of :solution
  validates_presence_of :penalty

  def type_enum
    ["Text", "File"]
  end
end
