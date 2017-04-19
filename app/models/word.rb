class Word < ApplicationRecord
  has_many :user_words
  has_many :users, through: :user_words
  belongs_to :type
  # has_many :madlibs, through: :word_associations
end
