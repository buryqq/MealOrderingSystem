class CreateOrdersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :orders_tables do |t|
      t.string :name
      t.string :status
    end
  end
end
