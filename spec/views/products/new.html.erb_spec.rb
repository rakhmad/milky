require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :buy_price => "9.99",
      :sell_price => "9.99",
      :catalog => nil
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_buy_price", :name => "product[buy_price]"
      assert_select "input#product_sell_price", :name => "product[sell_price]"
      assert_select "input#product_catalog", :name => "product[catalog]"
    end
  end
end
