class AddColumntoWords < ActiveRecord::Migration[5.0]
  def change
    add_column :words, :type_id, :integer
  end
end
