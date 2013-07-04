class Entry < ActiveRecord::Base
  belongs_to :monthly
  attr_accessible :avg_dwell_time, :blood_sugar, :comments, :day, :diastolic, :epo_vial_opened, :external_bag, :high_bag, :initial_drain, :low_bag, :med_bag, :systolic, :total_uf, :weight
end
