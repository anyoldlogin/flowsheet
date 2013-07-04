# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    day "2013-07-03"
    weight 1.5
    systolic 1
    diastolic 1
    low_bag 1
    med_bag 1
    high_bag 1
    external_bag 1
    initial_drain 1
    total_uf 1
    avg_dwell_time 1
    blood_sugar 1
    epo_vial_opened false
    comments "MyString"
    monthly nil
  end
end
