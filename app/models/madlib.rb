class Madlib < ApplicationRecord
  has_many :madlib_types
  has_many :types, through: :madlib_types
  has_many :user_vocabs
  has_many :users, through: :user_vocabs
  has_many :words, through: :user_vocabs

  def set_types
    self.content.scan(/\((.+?)\)/)
  end
end
