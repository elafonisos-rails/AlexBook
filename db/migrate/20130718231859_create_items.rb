class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :publisher
      t.string :isbn
      t.string :title
      t.string :price
      t.string :quantity

      t.timestamps
    end
  end
end
