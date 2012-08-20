# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  FactoryGirl.create(:recipe,
                     title: 'Egg Omlet',
                     description: 'Yummy Omlet',
                     source: "AllRecipes.com")

  FactoryGirl.create(:ingredient,
                     name: "Eggs",
                     amount: "3",
                     unit: "whole",
                     note: "Brown Eggs")
end
