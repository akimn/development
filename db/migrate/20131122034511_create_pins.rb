class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :locationBuilding
      t.string :concern

      t.timestamps
    end
  end
end
