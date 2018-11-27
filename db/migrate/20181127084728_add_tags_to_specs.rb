class AddTagsToSpecs < ActiveRecord::Migration[5.2]
  def change
    add_column :specs, :tags, :string
end
end
