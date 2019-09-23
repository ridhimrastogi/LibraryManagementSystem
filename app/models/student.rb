class Student < ApplicationRecord
    validates :name, :email, :password, :education_level, :university, :max_days_borrowed, presence: true
end
