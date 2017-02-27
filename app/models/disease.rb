class Disease < ApplicationRecord
	auto_strip_attributes :name, :about, :squish => true
  	validates :name, presence: true
  	has_many :drugs, through: :drug_diseases
  	has_many :trials
  	has_many :drug_diseases, dependent: :destroy
end
