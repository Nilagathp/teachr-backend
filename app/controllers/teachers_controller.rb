class TeachersController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @teachers = Teacher.all
    render json: @teachers
  end

  # def students
  #   @teacher = Teacher.find(params[:id])
  #   Student.all.
  # end

end
