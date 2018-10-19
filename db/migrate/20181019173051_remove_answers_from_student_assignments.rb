class RemoveAnswersFromStudentAssignments < ActiveRecord::Migration[5.2]
  def change
    remove_column :student_assignments, :answers, :text
  end
end
