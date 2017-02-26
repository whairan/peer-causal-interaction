class Stock < ApplicationRecord
  has_one :stock_market
  has_one :stock_type
  belongs_to :company

  auto_strip_attributes :ticker, :about, :squish => true
  validates :ticker, presence: true, uniqueness: true

  before_save :capitalize_ticker

  def capitalize_ticker
  	self.ticker = self.ticker.to_s.upcase
  end
end
