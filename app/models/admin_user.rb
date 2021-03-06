class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :staffs, dependent: :destroy
  has_many :players, dependent: :destroy
  has_many :game_results, dependent: :destroy

end
