class CreateBedsitters < ActiveRecord::Migration
  def change
    create_table :bedsitters do |t|

      t.timestamps null: false
    end
  end
end
