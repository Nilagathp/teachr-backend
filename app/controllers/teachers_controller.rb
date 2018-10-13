class TeachersController < ApplicationController
  skip_before_action :authorized, only: [:show]

  def show
    @teacher = Teacher.find(params[:id])
    render json: TeacherSerializer.new(@teacher)
  end

end
