class Visit < ActiveRecord::Base
	validates :day, :start, :finish, :description, presence: true
	validate :is_valid_time?

	def time_difference
		if !self.finish.nil? and !self.start.nil?
			(self.finish - self.start) / 60
		else
			nil
		end
	end

	def is_valid_time?
		if !time_difference.nil? and time_difference < 30
			errors.add(:finish, 'should be, at least, a half hour bigger than start time')
		end
	end
end
