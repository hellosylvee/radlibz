class DeleteWordAssociations < ActiveRecord::Migration[5.0]
  def change
    drop_table(:word_associations)
  end
end
