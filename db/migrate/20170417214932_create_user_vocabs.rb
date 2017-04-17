class CreateUserVocabs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_vocabs do |t|

      t.timestamps
    end
  end
end
