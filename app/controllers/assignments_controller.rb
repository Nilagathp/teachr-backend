class AssignmentsController < ApplicationController

  before_action :find_assignment, only [:update, :destroy]

  def create
    @assignment = Assignment.create(assignment_params)
    render json: @assignment
  end

  def update
    @assignment.update(assignment_params)
    render json: @assignment
  end

  def destroy
    render json: @assignment.destroy
  end

  private

  def assignment_params
    params.require(:assignment).permit(:name, :course_id, :category, :points)
  end

  def find_assignment
    @assignment = Assignment.find(params[:id])
  end
  
end
