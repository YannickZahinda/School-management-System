class AddColumnToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :name, :string
    add_column :students, :age, :string
    add_column :students, :previous_school, :string
  end
end
