class CreateWordAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :word_associations do |t|
      t.integer :user_vocab_id
      t.integer :word_id
      t.timestamps
    end
  end
end
