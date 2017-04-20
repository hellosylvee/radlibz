class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def new
    #displays a form where user can enter 5 words
    @word = Word.new
  end

  def create
    # Takes these words and save them to the database
    session[:words] = params[:words]
    @words =
    @word = Word.find_or_create_by(words_params)
    # Associate the words with that user, through the user_words table
    @word.users << current_user
    # Redirect user to the madlibs page with their words inside the madlib content
    redirect_to words_path

    #creates a record of the words, entered from new page, into words table
  end

  def show
    #displays a word from and all its users
  end

  private

  def words_params
    params.require(:word).permit(:words)
  end

  # def words_parser(params)
  #   params.each_with_index do |key, value|
  #
  #   end
  # end
end
