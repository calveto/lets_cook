class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :amount
      t.string :unit
      t.string :note

      t.timestamps
    end
  end
end
