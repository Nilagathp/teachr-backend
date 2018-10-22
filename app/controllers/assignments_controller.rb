class AssignmentsController < ApplicationController

  before_action :find_assignment, only: [:update, :destroy]

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
    params.require(:assignment).permit(:name, :course_id, :category, :points, :directions, :due_date).tap do |white_list|
      white_list[:content] = params[:assignment][:content].permit! if params[:assignment][:content]
    end
  end

  def find_assignment
    @assignment = Assignment.find(params[:id])
  end

end
