class Score < ApplicationRecord
  validates :score, inclusion: { in: 0..10 }
end

