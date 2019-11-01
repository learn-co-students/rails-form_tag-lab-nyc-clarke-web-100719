class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    session[:first_name] = params[:student][:first_name]
    redirect_to action: "new"
  end

end
