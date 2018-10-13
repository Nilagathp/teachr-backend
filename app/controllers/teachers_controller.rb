class TeachersController < ApplicationController

  def show
    @teacher = Teacher.find(params[:id])
    render json: TeacherSerializer.new(@teacher)
  end

end
