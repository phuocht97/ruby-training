class Lab < ActiveRecord::Base
  has_many :teacher, as::ta_duty
end
