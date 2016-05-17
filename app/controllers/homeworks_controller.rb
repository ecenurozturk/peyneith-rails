class HomeworksController < ApplicationController
  before_action :set_homework, only: [:show, :edit, :update, :destroy, :complete]

  def index
    @homeworks = Homework.all
  end


  def show
  end

  def new
    @homework = Homework.new
  end

  def edit
  end

  def create
    @homework = Homework.new(homework_params)
      if @homework.save
        redirect_to @homework, notice: 'Homework was successfully created.'
      else
        render :new
      end
  end

  def update
      if @homework.update(homework_params)
        redirect_to @homework, notice: 'Homework was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @homework.destroy
    redirect_to homeworks_url, notice: 'Homework was successfully destroyed.'
  end

  def complete
    @homework.update(completed_at: Time.now)
    redirect_to @homework, notice: 'Homework completed successfully.'
  end

  private
    def set_homework
      @homework = Homework.find(params[:id])
    end

    def homework_params
      params.require(:homework).permit(:lesson_id, :subject, :content, :start_time, :end_time)
    end
end
