class CreateLessonsStudents < ActiveRecord::Migration
  def change
    create_table :lessons_students do |t|
      t.belongs_to :lesson, index:true
      t.belongs_to :student, index:true
    end
  end
end
1
