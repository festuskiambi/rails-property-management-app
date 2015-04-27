class AddHousenoToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :houseno, :string
  end
end
