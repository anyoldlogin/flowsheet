class Monthly < ActiveRecord::Base
  belongs_to :user
  has_many :entries
  attr_accessible :day, :fill_volume, :last_fill, :month, :target_weight, :therapy_time, :total_volume
end
