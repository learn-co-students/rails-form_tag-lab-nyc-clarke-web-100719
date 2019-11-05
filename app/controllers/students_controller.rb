class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end


  def new

    @student = Student.new

    render :new

  end


  def create
    # byebug
    @student = Student.create(student_params)
    
  
    # @first_name = student_params[:first_name]

    redirect_to students_path

  end


  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end


end
