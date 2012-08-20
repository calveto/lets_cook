require 'spec_helper'

describe "ingredients/edit" do
  before(:each) do
    @ingredient = assign(:ingredient, stub_model(Ingredient,
      :name => "MyString",
      :amount => "MyString",
      :unit => "MyString",
      :note => "MyString"
    ))
  end

  it "renders the edit ingredient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ingredients_path(@ingredient), :method => "post" do
      assert_select "input#ingredient_name", :name => "ingredient[name]"
      assert_select "input#ingredient_amount", :name => "ingredient[amount]"
      assert_select "input#ingredient_unit", :name => "ingredient[unit]"
      assert_select "input#ingredient_note", :name => "ingredient[note]"
    end
  end
end
