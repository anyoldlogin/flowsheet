class Cover < ActiveRecord::Base
	belongs_to :user
	has_many :entries
  attr_accessible :cover_date, :total_volume, :user_id
end
