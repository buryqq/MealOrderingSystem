class AddUserIdToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :user_id, :integer
  end
end
