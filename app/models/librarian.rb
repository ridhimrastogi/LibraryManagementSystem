class Librarian < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :library
  validates :name, :email, :password, :library_id, presence: true


 # enum role: [:student, :lib, :admin]
 # after_initialize :set_default_role, :if => :new_record?

 # def set_default_role
 #  self.role ||= :student
 # end


end
