class Feedback < ApplicationRecord
  belongs_to :user
  has_one :report
end
