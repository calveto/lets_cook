class IngredientsAddRecipeKey < ActiveRecord::Migration
  def up
    add_column :ingredients, :recipe_id, :integer
  end

  def down
    drop_column :ingredients, :recipe_id, :integer
  end
end
