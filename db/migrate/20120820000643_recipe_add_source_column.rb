class RecipeAddSourceColumn < ActiveRecord::Migration
  def up
    add_column :recipes, :source, :string
  end

  def down
    drop_column :recipes, :source, :string
  end
end
