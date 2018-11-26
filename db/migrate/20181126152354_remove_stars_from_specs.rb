class RemoveStarsFromSpecs < ActiveRecord::Migration[5.2]
  def change
    remove_column :specs, :stars, :integer
  end
end
