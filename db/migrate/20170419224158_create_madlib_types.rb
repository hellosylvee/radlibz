class CreateMadlibTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :madlib_types do |t|
      t.integer :madlib_id
      t.integer :type_id

      t.timestamps
    end
  end
end
