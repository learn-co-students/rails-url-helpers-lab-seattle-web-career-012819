class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    # byebug
  end

  def activate 
    set_student 
    # byebug
    #byebug
    if @student.active
      @student.active = false
    else 
      @student.active = true
    end
    @student.save
    redirect_to student_path(@student)
  end

  def show
    set_student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end