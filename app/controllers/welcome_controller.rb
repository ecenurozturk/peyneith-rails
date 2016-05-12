class WelcomeController < ApplicationController
  def index
    @lessons = Student.find_by(school_number: current_user.school_number).lessons
  end

end
