class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :registrable, :polymorphic => true
      t.references :course

      t.timestamps
    end
    add_index :registrations, :registrable_id
    add_index :registrations, :course_id
  end
end
