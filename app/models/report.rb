class Report < ApplicationRecord
  belongs_to :user
  has_one :feedback, dependent: :destroy
end
