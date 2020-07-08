class Hospital < ActiveRecord::Base
  has_many :comments
  validates :name, length: { in: 5..255 }, presence: true
  AGE_REGEX = /\A[0-9]{1,2}+\z/i
  validates :age, length: { maximum: 2},
  format: { with: AGE_REGEX}
end
