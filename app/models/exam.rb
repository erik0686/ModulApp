class Exam < ApplicationRecord
    has_many :student_exams
    has_many :students, through: :student_exams
end
