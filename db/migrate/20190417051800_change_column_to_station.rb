class ChangeColumnToStation < ActiveRecord::Migration[5.0]
  def change
    change_column :stations, :route_name, :string, null: false
    change_column :stations, :station_name, :string, null: false
    change_column :stations, :time, :integer, null: false
  end
end
