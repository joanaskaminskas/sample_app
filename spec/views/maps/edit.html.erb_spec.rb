require 'spec_helper'

describe "maps/edit" do
  before(:each) do
    @map = assign(:map, stub_model(Map,
      :address => "MyString",
      :lng => 1.5,
      :lat => 1.5
    ))
  end

  it "renders the edit map form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", map_path(@map), "post" do
      assert_select "input#map_address[name=?]", "map[address]"
      assert_select "input#map_lng[name=?]", "map[lng]"
      assert_select "input#map_lat[name=?]", "map[lat]"
    end
  end
end
