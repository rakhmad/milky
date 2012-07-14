require 'spec_helper'

describe "catalogs/index" do
  before(:each) do
    assign(:catalogs, [
      stub_model(Catalog,
        :name => "Name",
        :status => false
      ),
      stub_model(Catalog,
        :name => "Name",
        :status => false
      )
    ])
  end

  it "renders a list of catalogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
