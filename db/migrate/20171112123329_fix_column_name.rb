class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :hawker_centre, :string
  end
end
