class ChangeDataTimeToStations < ActiveRecord::Migration[5.0]
  def change
    change_column :stations, :time, :integer
  end
end
