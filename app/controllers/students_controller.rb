class StudentsController < ApplicationController
   before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

  def show
  end

  private 
  def set_student
    @student = Student.find(params[:id])
  end

end
