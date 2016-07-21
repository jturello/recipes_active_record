class RemoveIngredientidAddRecipeid < ActiveRecord::Migration
  def change
    remove_column(:ingredients, :ingredient_id, :integer)
    add_column(:ingredients, :recipe_id, :integer)
  end
end
