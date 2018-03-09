class AddPartNumberToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :part_number, :string
    add_index :students, :part_number
  end
end
