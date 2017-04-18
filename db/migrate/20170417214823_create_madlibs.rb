class CreateMadlibs < ActiveRecord::Migration[5.0]
  def change
    create_table :madlibs do |t|
      t.string :title
      t.string :category
      t.text :content
      t.timestamps
    end
  end
end
