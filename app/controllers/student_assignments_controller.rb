class StudentAssignmentsController < ApplicationController
  def create
    @student_assignment = StudentAssignment.create(student_assignment_params)
    render json: @student_assignment
  end

  private
  def student_assignment_params
    params.require(:student_assignment).permit(:student_id, :assignment_id, :points_earned, :answers, :status)
  end

end
