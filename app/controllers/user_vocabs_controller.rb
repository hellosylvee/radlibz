class UserVocabsController < ApplicationController
  def new # madlibs/:id/user_vocabs/new
    @user_vocab = UserVocab.new( user_id: session[:user_id], madlib_id: params[:madlib_id] )
    @madlib_types = @user_vocab.madlib.set_types
    flash[:madlib_id] = params[:madlib_id]
  end

  def create
    word_strings = params[:user_words][:words]
    type_strings = params[:user_words][:word_types]
    words_hash = Hash[word_strings.zip(type_strings)]
    @words = words_hash.each_with_object([]) do |(word, type),array|
      type_object = Type.find_by( word_type: type )
      array << Word.find_or_create_by( word: word, type: type_object )
    end
    @user = User.find( session[:user_id] )
    @user_words = @words.map do |word|
      UserWord.create( user_id: @user.id, word_id: word.id)
    end
    @user_vocab = UserVocab.new( user_words: @user_words )
    @user_vocab.user_id = session[:user_id]
    @user_vocab.madlib_id = flash[:madlib_id]
    if @user_vocab.save
      redirect_to madlib_path( @user_vocab.madlib_id )
    else
      redirect_to "/madlibs/#{flash[:madlib_id]}/user_vocabs/new"
      flash.keep
    end
  end
end
