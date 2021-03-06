require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :buy_price => "9.99",
      :sell_price => "9.99",
      :catalog => nil
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_buy_price", :name => "product[buy_price]"
      assert_select "input#product_sell_price", :name => "product[sell_price]"
      assert_select "input#product_catalog", :name => "product[catalog]"
    end
  end
end
