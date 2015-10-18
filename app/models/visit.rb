class Visit < ActiveRecord::Base
	validates :day, :start, :finish, :description, presence: true
end
