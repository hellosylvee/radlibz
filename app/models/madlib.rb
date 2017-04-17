class Madlib < ApplicationRecord
  has_many :user_vocabs
  has_many :users, through: :user_vocabs
end
