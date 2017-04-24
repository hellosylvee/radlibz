class UserVocabsController < ApplicationController
  def new # madlibs/:id/user_vocabs/new
    @user_vocab = UserVocab.new( user_id: session[:user_id], madlib_id: params[:madlib_id] )
    @madlib_types = @user_vocab.madlib.set_types
    flash[:madlib_id] = params[:madlib_id]
  end

  def create
    word_strings = params[:user_words][:words]
    type_strings = params[:user_words][:word_types]
    @user = User.find( session[:user_id] )
    @madlib = Madlib.find( params["madlib_id"] )
    @user_vocab = UserVocab.create( user_id: @user.id, madlib_id: @madlib.id )

    @user_words = word_strings.map.with_index do |word, index|
      type_instance = Type.find_by(word_type: type_strings[index])
      word = Word.find_or_create_by(word: word, type: type_instance)
      UserWord.create(user: @user, user_vocab: @user_vocab, word: word)
      # @user.words.find_or_create_by( word: word, type: type_instance )
    end

    redirect_to madlib_user_vocab_path(@madlib, @user_vocab)

    # byebug
    # words_hash = Hash[word_strings.zip(type_strings)]
    # @words = words_hash.each_with_object([]) do |(word, type),array|
    #   type_object = Type.find_by( word_type: type )
    #   array << Word.find_or_create_by( word: word, type: type_object )
    # end
    #
    # @user = User.find( session[:user_id] )
    # @user_words = @words.map do |word|
    #   UserWord.create( user_id: @user.id, word_id: word.id)
    # end

    # @user_vocab = UserVocab.new( user_words: @user_words )
    # @user_vocab.user_id = session[:user_id]
    # @user_vocab.madlib_id = params[user_vocab.madlib.id]
    # if @user_vocab.save
    #   flash[:user_vocab] = @user_vocab.id
    #   redirect_to madlib_path( @user_vocab.madlib_id )
    # else
    #   redirect_to "/madlibs/#{flash[:madlib_id]}/user_vocabs/new"
    #   flash.keep
    # end
  end

  def show
    @madlib = Madlib.find(params[:madlib_id])
    @user_vocab = UserVocab.find(params[:id])
    @user = User.find( session[:user_id] )
  end
end
