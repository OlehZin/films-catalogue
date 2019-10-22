class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum role: %i[admin customer]

  has_many :reviews

  has_one_attached :avatar

  validates :first_name, :last_name, presence: :true
  validates :first_name, :last_name, uniqueness: true
     
end
