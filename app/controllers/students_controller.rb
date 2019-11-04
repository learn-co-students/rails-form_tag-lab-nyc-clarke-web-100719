class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    session[:first_name] = student_params
    redirect_to new_student_path
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
