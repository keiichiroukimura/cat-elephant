class CreateFirstStations < ActiveRecord::Migration[5.0]
  def change
    create_table :first_stations do |t|
      t.string :route_name
      t.string :station_name
      t.string :time
      t.references :information, foreign_key: true

      t.timestamps
    end
  end
end
