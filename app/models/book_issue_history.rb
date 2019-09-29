class BookIssueHistory < ApplicationRecord
  has_many :books
  has_many :students
  validates :issue_date , presence: true
  validates :overdue_date , presence: true
  validates :book_id , presence: true
  validates :library_id , presence: true
  validates :student_id, presence: true
end
