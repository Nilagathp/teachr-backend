class StudentsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @students = Student.all
    render json: @students
  end

end
