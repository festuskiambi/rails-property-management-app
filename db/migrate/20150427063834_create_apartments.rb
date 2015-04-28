class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
    	 t.string :name
    	  t.string :location
    	   t.string :noofrooms

      t.timestamps null: false
    end
  end
end
