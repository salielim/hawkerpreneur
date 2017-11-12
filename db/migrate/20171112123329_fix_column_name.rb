class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :microposts, :store_id, :hawker_centre
  end
end
