class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :category, default: 0
      t.integer :points
      t.integer :course_id

      t.timestamps
    end
  end
end
