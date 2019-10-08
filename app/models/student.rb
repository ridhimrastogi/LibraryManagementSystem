class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    belongs_to :university
    belongs_to :book_issue_history, optional: true
    has_many :bookmarks, dependent: :destroy
    validates :name, :email, :password, :education_level, :university_id, :max_books_borrowed, presence: true
end
