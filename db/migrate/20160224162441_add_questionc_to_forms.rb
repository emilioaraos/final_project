class AddQuestioncToForms < ActiveRecord::Migration
  def change
    add_column :forms, :questionc, :string
  end
end
