class User < ApplicationRecord
  has_many :user_vocabs
  has_many :words, through: :user_vocabs
  has_many :madlibs, through: :user_vocabs
end
