class Spec < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  #validates :tags, presence: true
  #validates :tags, format: { without: /['\/~`\!@#\$%\^&\*\(\)_\-\+=\{\}\[\]\|;:"\<\>,\.\?\\]/, message: ": Cannot contain special characters" }

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  belongs_to :user
  validates_uniqueness_of :title, scope: [:created_at, :updated_at, :user]

  def tagged_with(name)
    Tag.find_by!(name: name).specs
  end

  def tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
