class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.decimal :price

      t.timestamps
    end
  end
end
