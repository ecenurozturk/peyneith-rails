class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.references :lesson, index: true, foreign_key: true
      t.string :subject
      t.text :content
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
