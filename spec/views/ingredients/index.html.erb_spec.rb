require 'spec_helper'

describe "ingredients/index" do
  before(:each) do
    assign(:ingredients, [
      stub_model(Ingredient,
        :name => "Name",
        :amount => "Amount",
        :unit => "Unit",
        :note => "Note"
      ),
      stub_model(Ingredient,
        :name => "Name",
        :amount => "Amount",
        :unit => "Unit",
        :note => "Note"
      )
    ])
  end

  it "renders a list of ingredients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Amount".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
