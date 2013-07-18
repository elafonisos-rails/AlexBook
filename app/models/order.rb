class Order < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :prepay, :total

  has_many :items
end
