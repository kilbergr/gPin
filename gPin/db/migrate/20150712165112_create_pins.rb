class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :url
      t.string :comment
      t.string :imageURL

      t.timestamps null: false
    end
  end
end
