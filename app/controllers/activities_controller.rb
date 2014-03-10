class ActivitiesController < ApplicationController

  def index
    @time       = Time.new
    @activities = Activity.all
  end

  def create
    Activity.create(activity_params)
    redirect_to root_path
  end

  private

    def activity_params
      params.require(:activity).permit(:title, :estimation)
    end
end
