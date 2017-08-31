class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :tax
      t.float :shipping
      t.float :total
      t.integer :order_stastus_id

      t.timestamps
    end
  end
end
