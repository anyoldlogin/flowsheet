# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :monthly do
    user nil
    month "MyString"
    day 1
    total_volume 1.5
    fill_volume 1.5
    therapy_time 1
    last_fill 1.5
    target_weight 1.5
  end
end
