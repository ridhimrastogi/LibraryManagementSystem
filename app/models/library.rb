class Library < ApplicationRecord
    has_many :books
    
    validates :name , presence: true
    validates :university , presence: true
    validates :location , presence: true
    validates :max_days_borrowed , presence: true
    validates :overdue_fines , presence: true
end
