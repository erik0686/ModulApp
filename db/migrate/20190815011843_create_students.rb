class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :matricula
      t.string :name
      t.integer :semester
      t.string :program_type

      t.timestamps
    end
  end
end
