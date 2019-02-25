class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    Student.find(params[:id]).toggle_active
    redirect_to student_path(params[:id])
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
