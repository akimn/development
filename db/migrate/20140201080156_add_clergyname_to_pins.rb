class AddClergynameToPins < ActiveRecord::Migration
  def change
    add_column :pins, :clergyname, :string
  end
end
