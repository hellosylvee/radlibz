class CreateUserVocabs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_vocabs do |t|
      t.string :type
      t.integer :user_id
      t.integer :madlib_id
      t.timestamps
    end
  end
end
