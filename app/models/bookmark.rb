class Bookmark < ApplicationRecord
    validates :book_id, :student_id, presence: true
end
