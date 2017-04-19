class RemoveTypesFromUserVocabs < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_vocabs, :type
  end
end
