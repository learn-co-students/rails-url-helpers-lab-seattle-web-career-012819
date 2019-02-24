class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id].to_i)
    @student
  end

  def activate
    @student = Student.find(params[:id].to_i)
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id].to_i)
    end
end
