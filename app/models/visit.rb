class Visit < ActiveRecord::Base
	validates :day, :start, :finish, :description, presence: true
	validate :is_valid_time?

	attr_accessor :email_status

	default_scope { order("day DESC") }

	after_initialize :set_email_status

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

	def self.month_status(date)
		date = Date.parse(date)
		limit_date = date
		begin_date = date.beginning_of_month

		visits = self.where(['day >= ? and day <= ?', begin_date, limit_date])

		total = 0.0
		visits.each{ |visit| total += (visit.finish - visit.start) / 3600}
		total
	end

	def set_email_status
		if !self.email_date
			self.email_status = 'danger'
		elsif self.email_date.to_time.to_i < self.updated_at.to_time.to_i
			self.email_status = 'warning'
		else
			self.email_status = ''
		end
	end
end
