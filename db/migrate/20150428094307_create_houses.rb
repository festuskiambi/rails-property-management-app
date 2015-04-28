class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :location
      t.string :status
      t.string :rent
      t.string :bedrooms

      t.timestamps null: false
    end
  end
end
