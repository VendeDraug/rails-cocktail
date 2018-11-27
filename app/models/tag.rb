class Tag < ApplicationRecord
  has_many :taggings
  has_many :specs, through: :taggings
end
