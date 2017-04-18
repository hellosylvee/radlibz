class AddDescriptionToMadlibs < ActiveRecord::Migration[5.0]
  def change
    add_column :madlibs, :description, :text
  end
end
