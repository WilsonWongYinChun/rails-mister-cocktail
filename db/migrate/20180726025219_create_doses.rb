class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.text :description
      t.reference :cocktail, foreign_key: true
      t.reference :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
