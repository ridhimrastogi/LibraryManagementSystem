class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    belongs_to :university
    belongs_to :book_issue_history, optional: true
    validates :name, :email, :password, :education_level, :university_id, :max_days_borrowed, presence: true
end
