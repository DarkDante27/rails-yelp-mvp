class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :address, presence: true
end
