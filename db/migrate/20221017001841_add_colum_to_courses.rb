class AddColumToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :name, :string
    add_column :courses, :teacher, :string
    add_column :courses, :duration_hours, :string
  end
end
