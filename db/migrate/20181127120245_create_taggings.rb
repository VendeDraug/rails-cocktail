class CreateTaggings < ActiveRecord::Migration[5.2]
  def change
    create_table :taggings do |t|
      t.belongs_to :tags, index: true
      t.belongs_to :specs, index: true
      t.timestamps
    end
  end
end
