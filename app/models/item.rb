class Item < ActiveRecord::Base
  attr_accessible :isbn, :price, :publisher, :quantity, :title

  belongs_to :order

end
