class AddAdminToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :admin, :bool
  end
end
