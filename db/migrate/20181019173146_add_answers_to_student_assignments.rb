class AddAnswersToStudentAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :student_assignments, :answers, :jsonb
  end
end
