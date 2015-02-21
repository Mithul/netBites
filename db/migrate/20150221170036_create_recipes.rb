class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :calories
      t.integer :fat
      t.integer :protein
      t.integer :count
      t.text :instructions

      t.timestamps null: false
    end
  end
end
