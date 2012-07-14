require 'spec_helper'

describe "catalogs/new" do
  before(:each) do
    assign(:catalog, stub_model(Catalog,
      :name => "MyString",
      :status => false
    ).as_new_record)
  end

  it "renders new catalog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => catalogs_path, :method => "post" do
      assert_select "input#catalog_name", :name => "catalog[name]"
      assert_select "input#catalog_status", :name => "catalog[status]"
    end
  end
end
