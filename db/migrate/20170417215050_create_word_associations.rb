class CreateWordAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :word_associations do |t|

      t.timestamps
    end
  end
end
