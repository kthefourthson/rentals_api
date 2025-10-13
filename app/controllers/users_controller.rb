class UsersController < ApplicationController

  def index 
    users = User.all
      render json: users 
  end

  def show 
    user = User.find( 
      params[:id] 
    )
    render json: user 
  end 

  def create
    user = User.new( 
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      role: params[:role] 
    )
    if user.save 
      render json: user 
    else 
      render json: {errors: user.errors.full_messages}, status: :unproccessable_entity 
    end
  end 
  def update 
    user = User.find( params[:id])
     
    if user.update(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      role: params[:role] 
    )
      render json: user 
    else 
      render json: {errors: user.errors.full_messages}, status: :unproccessable_entity

    end
  end
  def destroy 
    user = User.find( params[:id])
    user.destroy 
      render json: {message; "user deleted"},
      status: :ok 
  end
end
