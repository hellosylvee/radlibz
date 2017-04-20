class Madlib < ApplicationRecord
  has_many :user_vocabs
  has_many :users, through: :user_vocabs
  has_many :words, through: :user_vocabs
  has_many :madlib_types
  has_many :types, through: :madlib_types

  def set_types
    type_strings = self.content.scan(/\((.+?)\)/)
    types = type_strings.flatten.map do |type_string|
      Type.find_or_create_by( word_type: type_string )
    end
    self.types = types
  end

  def replace_types(user_vocab) #object of an user_vocab instance
    vocab = user_vocab.words.map { |word| word.word }
    string = self.content.dup

    filled_in_content = vocab.each_with_object(string) do |word,string|
      string.sub!( /(\(.+?\))/, word )
    end
  end
end
