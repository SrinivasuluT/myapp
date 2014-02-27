class CreateJulies < ActiveRecord::Migration
  def change
    create_table :julies do |t|
      t.integer :day
      t.string :month

      t.timestamps
    end
  end
end
