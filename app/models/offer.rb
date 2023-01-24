class Offer < ApplicationRecord
  belongs_to :company
  has_one_attached :photo
  validates :description, presence: true
  validates :function, presence: true
end
