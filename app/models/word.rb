class Word < ApplicationRecord
  has_many :word_associations
  has_many :user_vocabs, through: :word_associations
  has_many :users, through: :user_vocabs
  has_many :madlibs, through: :word_associations
end
