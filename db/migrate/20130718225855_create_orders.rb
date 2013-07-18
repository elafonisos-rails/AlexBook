class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :total
      t.string :prepay

      t.timestamps
    end
  end
end
