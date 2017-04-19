class AddUserVocabIdToUserWords < ActiveRecord::Migration[5.0]
  def change
    add_column :user_words, :user_vocab_id, :integer
  end
end
