class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :race_distance
      t.string :race_type
      t.string :label
      t.integer :price
      t.string :adress
      t.date :date

      t.timestamps
    end
  end
end
