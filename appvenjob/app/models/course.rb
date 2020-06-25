class Course < ActiveRecord::Base
has_many :teacher, as::ta_duty
end
