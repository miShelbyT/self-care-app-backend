class Api::V1::UsersController < ApplicationController

  def index
    users = User.all.includes(:user_activities, :journal_entries)
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

  def login
    user=User.find_by(name: params[:name])
    if(user && user.authenticate(params[:password]))
      render json: user
    end
  end

  private

  def user_params
    params.permit(:name, :password, :city, :email_address)
  end

end
