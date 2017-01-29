class Company < ApplicationRecord
  has_one :stock, dependent: :destroy
  has_many :trials, dependent: :destroy
  has_many :drugs, dependent: :destroy
  auto_strip_attributes :name, :url, :about, :squish => true
  validates :name, presence: true

  before_save :capitalize_title
  def capitalize_title
	self.name = self.name.to_s.capitalize.titleize
  end
end
