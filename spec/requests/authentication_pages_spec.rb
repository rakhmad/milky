require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }

  describe "Sign In" do
    before { visit signin_path }
     it { should have_selector 'h1', text: 'Sign In' }
     it { should have_selector 'title', text: 'Sign in'}

    describe "with invalid information" do
      before { click_button 'Sign in'}
      it { should have_selector 'title', text: 'Sign in' }
      it { should have_selector 'div.alert.alert-error', text: 'Invalid'}
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Username", with: user.username
        fill_in "Password", with: user.password
        click_button 'Sign in'
      end

      it { should have_selector 'title', text: user.name }
      it { should have_link 'Sign out', href: signout_path }
      it { should_not have_link 'Sign in', href: signin_path }

    end
  end
end
