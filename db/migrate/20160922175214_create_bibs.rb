class CreateBibs < ActiveRecord::Migration[5.0]
  def change
    create_table :bibs do |t|
      t.references :race, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :bought_price
      t.integer :selling_price
      t.string :sale_reason

      t.timestamps
    end
  end
end