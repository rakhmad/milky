require 'spec_helper'

describe "order_items/new" do
  before(:each) do
    assign(:order_item, stub_model(OrderItem,
      :amount => 1,
      :order => nil,
      :product => nil
    ).as_new_record)
  end

  it "renders new order_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => order_items_path, :method => "post" do
      assert_select "input#order_item_amount", :name => "order_item[amount]"
      assert_select "input#order_item_order", :name => "order_item[order]"
      assert_select "input#order_item_product", :name => "order_item[product]"
    end
  end
end
