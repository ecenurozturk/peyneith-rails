class CreateCompleteds < ActiveRecord::Migration
  def change
    create_table :completeds do |t|
      t.integer :user_id
      t.integer :homework_id
      t.date :completed_at

      t.timestamps null: false
    end
  end
end
