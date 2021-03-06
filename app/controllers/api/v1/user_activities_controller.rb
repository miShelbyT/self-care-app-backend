class Api::V1::UserActivitiesController < ApplicationController
  
  def index
    user_activities = UserActivity.all
    render json: user_activities, except: [:created_at, :updated_at]
  end

  def create
    user_activity = UserActivity.create!(user_activities_params)
    render json: user_activity
  end

  private

  def user_activities_params
  params.permit(:user_id, :activity_id, :activity_name)
  end

end
