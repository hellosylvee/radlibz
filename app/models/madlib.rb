class Madlib < ApplicationRecord
  has_many :madlib_types
  has_many :types, through: :madlib_types
  has_many :user_vocabs
  has_many :users, through: :user_vocabs
  has_many :words, through: :user_vocabs

  def set_types
    type_strings = self.content.scan(/\((.+?)\)/)
    types = type_strings.flatten.map do |type_string|
      Type.find_or_create_by( word_type: type_string )
    end
    self.types = types
  end
end
