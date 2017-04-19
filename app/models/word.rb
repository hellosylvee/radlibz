class Word < ApplicationRecord
  belongs_to :user_word
  belongs_to :type
end
