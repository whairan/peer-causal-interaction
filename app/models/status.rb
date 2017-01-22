class Status < ApplicationRecord
	auto_strip_attributes :name, :about, :squish => true
  	validates :name, presence: true
  	belongs_to :phase
end
