class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new 
    @student = Student.new #blank instance assigned to variable that will be updated by form 
  end 

  def create 
    student = Student.create(student_params) #calling helper method to create a drink from user form submission 
    redirect_to student_path(student.id) #pulling up profile page through helper and variable saved of new drink
  end 

  private 
    def student_params #helper method 
        params.require(:student).permit(:first_name, :last_name) #permitting the form fields to change the database
    end  

end
