class CreateStudentExams < ActiveRecord::Migration[5.2]
  def change
    create_table :student_exams do |t|
      t.boolean :can_present
      t.references :student, foreign_key: true
      t.references :exam, foreign_key: true

      t.timestamps
    end
  end
end
