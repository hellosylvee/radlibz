class WordAssociation < ApplicationRecord
  belongs_to :user_vocab
  belongs_to :word
end
