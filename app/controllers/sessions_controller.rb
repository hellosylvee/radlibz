# require 'pry'
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user.present? && user.authenticate(params[:password]) #user exists and is authenticated
      session[:user_id] = user.id
      redirect_to user_path(user)
    elsif !user.present?
      user = User.create(name: params[:name], password: params[:password]) #user doesn't exist
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to '/login' #user exists, but password is wrong
    end
  end
end
