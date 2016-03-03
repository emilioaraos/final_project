class AddQuestionbToForms < ActiveRecord::Migration
  def change
    add_column :forms, :questionb, :string
  end
end
