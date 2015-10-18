class Visit < ActiveRecord::Base
	validates :day, :start, presence: true
end
