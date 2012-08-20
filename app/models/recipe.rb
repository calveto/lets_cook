class Recipe < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :ingredients
end
