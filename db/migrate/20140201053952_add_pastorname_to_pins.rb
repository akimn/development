class AddPastornameToPins < ActiveRecord::Migration
  def change
    add_column :pins, :pastor_name, :string
  end
end
