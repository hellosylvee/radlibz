class MadlibsController < ApplicationController
  def index
    @madlibs = Madlib.all
  end

  def new
    @madlib = Madlib.new
  end

  def show
    @user_vocab = UserVocab.find(flash[:user_vocab])
    @madlib = Madlib.find(params[:id])
  end

  def create
  end
end
