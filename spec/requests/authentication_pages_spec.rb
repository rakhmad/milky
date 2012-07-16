require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }

  describe "Sign In" do
    before {visit signin_path }

    it { should have_selector ('h1', text: 'Sign In') }
    it { should have_selector ('title', text: 'Sign In')}

  end

end
