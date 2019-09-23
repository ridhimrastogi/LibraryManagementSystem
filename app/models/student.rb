class Student < ApplicationRecord
    validates :name, :email, :password, :education_level, :university, presence: true
end
