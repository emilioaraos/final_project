class AddAnswerdToForms < ActiveRecord::Migration
  def change
    add_column :forms, :answerd, :boolean
  end
end
