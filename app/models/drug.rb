class Drug < ApplicationRecord
	auto_strip_attributes :name, :about, :squish => true
  	validates :name, presence: true
  	has_many :diseases, through: :drug_diseases
  	has_many :drug_diseases, dependent: :destroy
  	has_many :trials, dependent: :destroy
end
