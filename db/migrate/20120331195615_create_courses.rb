class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :duration
      t.text :description
      t.text :objectives

      t.timestamps
    end
  end
end
