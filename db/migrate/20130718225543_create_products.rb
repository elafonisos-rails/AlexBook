class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :publisher
      t.string :isbn
      t.string :title
      t.string :price

      t.timestamps
    end
  end
end
