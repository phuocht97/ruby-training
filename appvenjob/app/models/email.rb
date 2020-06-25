class Email < ActiveRecord::Base
  validates :name, length: { maximum: 30 }
  validates :password, length: 6..20
end
