class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.date :exam_date
      t.integer :module_number
      t.string :classroom
      t.string :subject

      t.timestamps
    end
  end
end
