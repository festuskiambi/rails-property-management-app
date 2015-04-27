class AddHousenoToBedsitters < ActiveRecord::Migration
  def change
    add_column :bedsitters, :houseno, :string
  end
end
