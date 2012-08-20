# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ingredient do
    name "Butter"
    amount "1"
    unit "Cup"
    note "Unsalted"
  end
end
