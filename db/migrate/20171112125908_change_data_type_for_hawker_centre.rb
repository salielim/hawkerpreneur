class ChangeDataTypeForHawkerCentre < ActiveRecord::Migration[5.0]
  def change
    change_column(:microposts, :hawker_centre, :string)    
  end
end