class Api::V1::UsersController < ApplicationController

  def index
    users = User.all.includes(:user_activities)
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  private

  def user_params
    params.permit(:name, :password, :city, :email_address)
  end

end