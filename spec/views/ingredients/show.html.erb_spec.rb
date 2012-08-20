require 'spec_helper'

describe "ingredients/show" do
  before(:each) do
    @ingredient = assign(:ingredient, stub_model(Ingredient,
      :name => "Name",
      :amount => "Amount",
      :unit => "Unit",
      :note => "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Amount/)
    rendered.should match(/Unit/)
    rendered.should match(/Note/)
  end
end
