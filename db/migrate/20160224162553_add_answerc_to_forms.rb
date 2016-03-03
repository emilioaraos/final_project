class AddAnswercToForms < ActiveRecord::Migration
  def change
    add_column :forms, :answerc, :boolean
  end
end
