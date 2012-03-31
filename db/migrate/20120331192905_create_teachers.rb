class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :birth_date
      t.string :sex

      t.timestamps
    end
  end
end
