require 'spec_helper'

describe "order_items/edit" do
  before(:each) do
    @order_item = assign(:order_item, stub_model(OrderItem,
      :amount => 1,
      :order => nil,
      :product => nil
    ))
  end

  it "renders the edit order_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => order_items_path(@order_item), :method => "post" do
      assert_select "input#order_item_amount", :name => "order_item[amount]"
      assert_select "input#order_item_order", :name => "order_item[order]"
      assert_select "input#order_item_product", :name => "order_item[product]"
    end
  end
end
