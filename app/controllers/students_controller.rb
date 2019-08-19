class StudentsController < ApplicationController
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(students_params)
    if @student.save
        redirect_to students_path
    else
        render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(students_params)
      redirect_to students_path
    else
      render 'edit'
    end
  end

  def delete
    @student = Student.find(params[:id])
    @student.destroy
  end

  private
    def students_params
      params.require(:student).permit(:name, :matricula)
    end
end
