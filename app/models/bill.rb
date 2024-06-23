class Bill < ApplicationRecord
  belongs_to :employee

  validates :bill_type, inclusion: { in: %w[food travel others], message: "%{value} is not a valid bill type" }
  validates :amount, numericality: { greater_than: 0 }
end
