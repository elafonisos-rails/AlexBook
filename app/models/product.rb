class Product < ActiveRecord::Base
  attr_accessible :isbn, :price, :publisher, :title
end
