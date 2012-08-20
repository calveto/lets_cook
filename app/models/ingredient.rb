class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :name, :note, :unit
  belongs_to :recipe
end
