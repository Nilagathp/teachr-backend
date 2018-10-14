class AssignmentsController < ApplicationController

  def create
    @assignment = Assignment.create(assignment_params)
    render json: @assignment
  end

  private
  def assignment_params
    params.require(:assignment).permit(:name, :course_id, :category, :points)
  end
end
