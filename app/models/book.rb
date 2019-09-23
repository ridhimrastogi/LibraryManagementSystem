class Book < ApplicationRecord
    belongs_to :library

    validates :title , presence: true
    validates :isbn , presence: true
    validates :author , presence: true
    validates :language , presence: true
    validates :published , presence: true
    validates :edition , presence: true
    validates :cover_image , presence: true
    validates :subject , presence: true
    validates :summary , presence: true
    validates :special_collection , presence: true

end
