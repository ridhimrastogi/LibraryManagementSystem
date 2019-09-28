class Librarian < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :email, :password, :libraryId, presence: true

 # enum role: [:student, :lib, :admin]
 # after_initialize :set_default_role, :if => :new_record?

 # def set_default_role
 #  self.role ||= :student
 # end


end
