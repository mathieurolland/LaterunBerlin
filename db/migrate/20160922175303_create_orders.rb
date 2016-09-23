class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :buyer
      t.references :bib, foreign_key: true

      t.timestamps
    end
  end
end
