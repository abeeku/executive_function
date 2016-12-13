# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    starts_at "2013-08-13 21:26:29"
    ends_at "2013-08-13 21:26:29"
    all_day false
    description "MyText"
  end
end
