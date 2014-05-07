class LessonsController < ApplicationController
  def show
  end
  def index
  	@lessons = Lesson.find (:all)
    @lessons = Lesson.all
    @lessons = Lesson.paginate page: params[:page]
  end
end
