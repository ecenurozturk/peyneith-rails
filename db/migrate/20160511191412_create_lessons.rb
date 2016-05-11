class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :lesson_code
      t.string :teacher_name
      t.references :student, index: true, foreign_key: true
      t.references :homework, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
