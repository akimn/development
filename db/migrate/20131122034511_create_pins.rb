class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :locationBuilding
      t.string :concern
      t.string :pastor_name

      t.timestamps
    end
  end
end
