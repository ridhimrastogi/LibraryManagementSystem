class Librarian < ApplicationRecord
  validates :name, :email, :password, :libraryId, presence: true
end
