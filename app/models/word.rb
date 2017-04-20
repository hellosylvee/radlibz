class Word < ApplicationRecord
  has_many :user_words
  has_many :users, through: :user_words
  belongs_to :type
end
