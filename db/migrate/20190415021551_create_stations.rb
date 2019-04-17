class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :route_name
      t.string :station_name
      t.string :time
      t.references :informaition, foreign_key: true

      t.timestamps
    end
  end
end
