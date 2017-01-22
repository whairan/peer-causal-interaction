class DrugDisease < ApplicationRecord
  belongs_to :drug
  belongs_to :disease
end
