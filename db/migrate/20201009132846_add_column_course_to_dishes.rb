class AddColumnCourseToDishes < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :course_name, :string
  end
end
