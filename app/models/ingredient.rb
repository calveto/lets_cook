class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :name, :note, :unit
end
