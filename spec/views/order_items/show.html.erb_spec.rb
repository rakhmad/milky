require 'spec_helper'

describe "order_items/show" do
  before(:each) do
    @order_item = assign(:order_item, stub_model(OrderItem,
      :amount => 1,
      :order => nil,
      :product => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
