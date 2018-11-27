class AddDateToSpecs < ActiveRecord::Migration[5.2]
  def change
    add_column :specs, :date, :date
  end
end
