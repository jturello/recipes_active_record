class CreateRecipesTable < ActiveRecord::Migration
  def change
    create_table(:recipes) do |t|
      t.column(:name, :string)
      t.column(:ingredient_id, :integer)
      t.column(:tag_id, :integer)
      t.column(:instruction_id, :integer)
      t.column(:rating, :integer)
    end
  end
end
