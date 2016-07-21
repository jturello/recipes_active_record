class CreateJoinTableIngredientsRecipes < ActiveRecord::Migration
  def change
    create_table(:ingredients_recipes) do |t|
      t.column(:recipe_id, :integer)
      t.column(:ingredient_id, :integer)
      t.column(:quanity, :integer)
    end
  end
end
