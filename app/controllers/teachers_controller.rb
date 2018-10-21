class TeachersController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @teachers = Teacher.all
    render json: @teachers
  end

end
