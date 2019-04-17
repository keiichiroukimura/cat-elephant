class CreateInformaitions < ActiveRecord::Migration[5.0]
  def change
    create_table :informaitions do |t|
      t.string :name
      t.integer :rent
      t.text :address
      t.string :age
      t.text :remark

      t.timestamps
    end
  end
end
