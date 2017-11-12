class AddDataToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :picture, :string
    add_column :microposts, :title, :string
    add_column :microposts, :hawker, :string
  end
end
