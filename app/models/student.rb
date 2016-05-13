class Student < ActiveRecord::Base
  has_and_belongs_to_many :lessons

  validates :school_number, presence: true
end
