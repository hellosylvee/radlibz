class UserVocab < ApplicationRecord
  has_many :word_associations
  has_many :words, through: :word_associations
  belongs_to :user
  belongs_to :madlib
end
