class AddOrderIdToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :order_id, :integer
  end
end
