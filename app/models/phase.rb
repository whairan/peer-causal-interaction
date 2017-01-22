class Phase < ApplicationRecord
  has_one :status
  belongs_to :trial
  auto_strip_attributes :name, :about, :squish => true
  validates :name, :status_id, presence: true
end
