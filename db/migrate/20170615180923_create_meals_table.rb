class CreateMealsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :meals_tables do |t|
      t.string :name
      t.decimal :price
    end
  end
end
