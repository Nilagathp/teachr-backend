class CreateStudentAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :student_assignments do |t|
      t.integer :student_id
      t.integer :assignment_id
      t.integer :points_earned, default: 0

      t.timestamps
    end
  end
end
