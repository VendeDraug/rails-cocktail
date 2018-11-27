class AddColumnToSpecs < ActiveRecord::Migration[5.2]
  def change
    add_column :user_id, :specs, :integer
  end
end
