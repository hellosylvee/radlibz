class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.string :word_type

      t.timestamps
    end
  end
end
