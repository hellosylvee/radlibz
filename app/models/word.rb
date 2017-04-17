class Word < ApplicationRecord
  has_many :word_associations
  has_many :user_vocabs, through: :word_associations
  has_many :users, through: :user_vocabs
end
