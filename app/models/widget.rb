class Widget < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :widget_status
  validates :price_cents, numericality: { less_than_or_equal_to: 10_000_00 }
end
