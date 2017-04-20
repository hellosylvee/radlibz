class UserWord < ApplicationRecord
  belongs_to :user
  belongs_to :word
  belongs_to :user_vocab, optional: true
end
