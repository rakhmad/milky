require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :username => "Username",
      :name => "Name",
      :email => "Email",
      :address => "MyText",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
