class Api::V1::ActivitiesController < ApplicationController

  def index
    activities = Activity.all.includes(:user_activities)
    render json: activities
  end
  
end
