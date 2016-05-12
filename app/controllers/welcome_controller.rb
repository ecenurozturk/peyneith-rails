class WelcomeController < ApplicationController
  before_action get_student

  def index
    @lessons = @student.lessons
  end

  private
  def get_student
    @student = Student.where(school_number: current_user.school_number)
  end

end
