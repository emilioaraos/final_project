class AddQuestiondToForms < ActiveRecord::Migration
  def change
    add_column :forms, :questiond, :string
  end
end
