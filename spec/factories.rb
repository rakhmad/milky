FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    username "mhartl"
    password "foobar"
    status   true
    address  "Blah blah blah"
    password_confirmation "foobar"
  end
end