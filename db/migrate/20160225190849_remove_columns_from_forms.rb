class RemoveColumnsFromForms < ActiveRecord::Migration
  def change
    remove_column :forms, :question, :string
    remove_column :forms, :questionb, :string
    remove_column :forms, :questionc, :string
    remove_column :forms, :questiond, :string
  end
end
