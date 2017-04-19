class User < ApplicationRecord
  has_many :user_vocabs
  has_many :madlibs, through: :user_vocabs
  has_many :user_words
  has_many :words, through: :user_words

  def adjectives
    self.words.where(type_id: 1)
  end


  has_secure_password
end
