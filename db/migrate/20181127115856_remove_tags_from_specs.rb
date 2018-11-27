class RemoveTagsFromSpecs < ActiveRecord::Migration[5.2]
  def change
    remove_column :specs, :tags, :string
  end
end
