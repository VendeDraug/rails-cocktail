class Spec < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  # validates :tags, presence: true
  #validates :tags, presence: true
  #validates :tags, format: { without: /['\/~`\!@#\$%\^&\*\(\)_\-\+=\{\}\[\]\|;:"\<\>,\.\?\\]/, message: ": Cannot contain special characters" }

  validates_uniqueness_of :user_id, scope: [:title, :date], message: ": You have already posted this today!"
  validates_uniqueness_of :date, on: :create, scope: [:user_id], message: ": You have already posted today!"

  # def tagged_with(name)
  #   Tag.find_by!(name: name).specs
  # end

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
