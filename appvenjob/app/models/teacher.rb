class Teacher < ActiveRecord::Base
  belongs_to:ta_duty, polymorphic: true
end
