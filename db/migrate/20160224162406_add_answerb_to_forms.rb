class AddAnswerbToForms < ActiveRecord::Migration
  def change
    add_column :forms, :answerb, :boolean
  end
end
