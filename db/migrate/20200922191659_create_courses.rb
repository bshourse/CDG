class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.belongs_to :day, index: true
      t.belongs_to :dish, index: true
      t.timestamps
    end
  end
end
