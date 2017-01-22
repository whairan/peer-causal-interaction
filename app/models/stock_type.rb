class StockType < ApplicationRecord
	auto_strip_attributes :name, :about, :squish => true
  	validates :name, presence: true
end
