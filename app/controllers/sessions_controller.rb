# require 'pry'
class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry
    user = User.find_by(id: session[:user_id])
    if user.present?
      session[:user_id] = user.id
      redirect_to user_path
    elsif
      user = User.create(name: params[:name], password: params[:password])
      session[:user_id] = user.id
      redirect_to user_path
    else
      render 'new'
    end
  end

end
