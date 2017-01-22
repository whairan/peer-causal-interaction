class Trial < ApplicationRecord
  has_one :phase
  belongs_to :drug
  belongs_to :company

  auto_strip_attributes :about, :squish => true
  validates :phase_id, :drug_id, :company_id, presence: true
end
