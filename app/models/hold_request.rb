class HoldRequest < ApplicationRecord
  validates :book_id, :student_id, :queuenumber, presence: true
end
