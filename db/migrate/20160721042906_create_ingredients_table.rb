class CreateIngredientsTable < ActiveRecord::Migration
  def change
    create_table(:ingredients) do |t|
      t.column(:name, :string)
      t.column(:ingredient_id, :integer)
    end
  end
end
