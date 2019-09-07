class ExamsController < ApplicationController
  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exams_params)
    if @exam.save
        redirect_to exams_path
    else
        render 'new'
    end
  end

  def show
    @exam = Exam.find(params[:id])
  end

  def edit
    @exam = Exam.find(params[:id])
  end

  def index
    @exams = Exam.all
  end

  def update
    @exam = Exam.find(params[:id])
    if @exam.update(exams_params)
      redirect_to exams_path
    else
      render 'edit'
    end
  end

  def delete
    @exam = Exam.find(params[:id])
    @exam.destroy
  end

  private
    def exams_params
      params.require(:exam).permit(:exam_date, :module_number, :classroom, :subject)
    end
end
