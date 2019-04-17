class ChangeColumnToInformaition < ActiveRecord::Migration[5.0]
  def change
    change_column :informaitions, :name, :string, null: false
    change_column :informaitions, :rent, :integer, null: false
    change_column :informaitions, :address, :text, null: false
    change_column :informaitions, :age, :integer, null: false
  end
end
