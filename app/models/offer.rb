class Offer < ApplicationRecord
  belongs_to :company
  has_one_attached :photo
end
