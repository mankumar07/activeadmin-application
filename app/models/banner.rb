class Banner < ApplicationRecord
  validates :sequence, presence: true
  has_one_attached :banner
end
