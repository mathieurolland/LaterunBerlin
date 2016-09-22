class CreateFavoriteRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_races do |t|
      t.references :race, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
