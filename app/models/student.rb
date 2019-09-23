class Student < ApplicationRecord
    validates :name, :email, :passowrd, :education_level, :university, :max_days_borrowed, presence: true
end
