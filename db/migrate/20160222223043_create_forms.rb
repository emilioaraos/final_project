class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :question
      t.boolean :answer

      t.timestamps null: false
    end
  end
end
