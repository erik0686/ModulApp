class StudentExamsController < ApplicationController

  def index
    @student_exams = StudentExam.all
  end

  def edit
    @student_exam = StudentExam.find(params[:id])
  end

  def update
    @student_exam = StudentExam.find(params[:id])
    # binding.pry
    if @student_exam.update(student_exams_params)
      redirect_to edit_student_exam_path
    else
      render 'edit'
    end
  end

  private
    def student_exams_params
      params.require(:student_exam).permit(:can_present, :exam, :student_id)
    end
end
