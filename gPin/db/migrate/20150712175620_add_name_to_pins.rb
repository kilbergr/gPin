class AddNameToPins < ActiveRecord::Migration
  def change
    add_column :pins, :pinName, :string
  end
end
