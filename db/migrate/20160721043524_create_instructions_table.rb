class CreateInstructionsTable < ActiveRecord::Migration
  def change
    create_table(:instructions) do |t|
      t.column(:content, :string)
      t.column(:recipe_id, :integer)
    end
  end
end
