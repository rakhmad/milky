require 'spec_helper'

describe "catalogs/show" do
  before(:each) do
    @catalog = assign(:catalog, stub_model(Catalog,
      :name => "Name",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/false/)
  end
end
