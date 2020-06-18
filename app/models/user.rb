class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :vues
  has_many :movies, through: :vues
  has_one :criterium


  # after_create :default_criterium

  private

  # def default_criterium
  #   Criterium.create(user: self)
  # end

  # validates :username, :conjoint1, :platforms, presence: true
end
