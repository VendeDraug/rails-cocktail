class Spec < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :tags, presence: true
  validates :tags, format: { with: /(\#[a-zA-Z0-9_%]*)/, message: "Tags must start with '#'" }
end
