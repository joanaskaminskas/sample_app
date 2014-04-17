require 'spec_helper'

describe "maps/show" do
  before(:each) do
    @map = assign(:map, stub_model(Map,
      :address => "Address",
      :lng => 1.5,
      :lat => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
