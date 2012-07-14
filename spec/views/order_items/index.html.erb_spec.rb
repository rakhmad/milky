require 'spec_helper'

describe "order_items/index" do
  before(:each) do
    assign(:order_items, [
      stub_model(OrderItem,
        :amount => 1,
        :order => nil,
        :product => nil
      ),
      stub_model(OrderItem,
        :amount => 1,
        :order => nil,
        :product => nil
      )
    ])
  end

  it "renders a list of order_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
