class Type < ApplicationRecord
  has_many :words
  has_many :madlib_types
  has_many :madlibs, through: :madlib_types
end
