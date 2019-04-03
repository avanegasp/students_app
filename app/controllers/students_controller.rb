class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    @student2 = Student.first
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
  end

  def destroy
  end
  def create
    student = Student.new(students_params)
    student.estado = true
    if student.save
      redirect_to '/students'
    end
  end

  private
  def students_params
    params.require(:student).permit(:nombre,:apellido,:edad,:correo)
  end
end
