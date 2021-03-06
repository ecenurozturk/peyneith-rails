class WelcomeController < ApplicationController
  before_action :get_student

  def index
    if @student == nil
      @lessons = Lesson.where(teacher_name: current_user.name)
    else
      @lessons = @student.lessons
    end
  end

  private
  def get_student
    @student = Student.find_by(school_number: current_user.school_number)
  end

end
