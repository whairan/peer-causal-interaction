class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, presence: true

  before_save :capitalize_name

  def capitalize_name
    self.first_name = self.first_name.to_s.capitalize.titleize
    self.last_name = self.last_name.to_s.capitalize.titleize
  end
end
