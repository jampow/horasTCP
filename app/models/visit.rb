class Visit < ActiveRecord::Base
	validates :day, :start, :finish, presence: true
end
