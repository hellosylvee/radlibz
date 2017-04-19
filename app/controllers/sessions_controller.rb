# require 'pry'
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(id: session[:user_id])
    if user.present?
      session[:user_id] = user.id
      redirect_to user_path(user)
    elsif
      user = User.create(name: params[:name], password: params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render 'new'
    end
  end

end
