class AddAnswersAndStatusToStudentAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :student_assignments, :answers, :text, array:true, default:["", "", ""]
    add_column :student_assignments, :status, :string, default:"not_started"
  end
end
