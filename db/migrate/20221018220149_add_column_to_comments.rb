class AddColumnToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :name, :string
    add_column :comments, :description, :string
  end
end
