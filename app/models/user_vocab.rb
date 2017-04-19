class UserVocab < ApplicationRecord
  belongs_to :user
  belongs_to :madlib
  has_many :user_words
  has_many :words, through: :user_words
end
