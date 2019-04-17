class ChangeDataAgeToInformaitions < ActiveRecord::Migration[5.0]
  def change
    change_column :informaitions, :age, :integer
  end
end
