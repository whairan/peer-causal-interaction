class Trial < ApplicationRecord
  has_many :phases
  belongs_to :drug
  belongs_to :disease
  belongs_to :company

  auto_strip_attributes :about, :squish => true
  validates :drug_id, :disease_id, :company_id, presence: true
end
