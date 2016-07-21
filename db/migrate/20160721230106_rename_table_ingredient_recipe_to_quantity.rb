class RenameTableIngredientRecipeToQuantity < ActiveRecord::Migration
  def change
    rename_table(:ingredients_recipes, :quantities)
  end
end
