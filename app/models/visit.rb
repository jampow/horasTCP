class Visit < ActiveRecord::Base
	validates :day, :start, :finish, :description, presence: true
	validate :is_valid_time?

	attr_accessor :email_warning_level

	default_scope { order("day DESC") }

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

	def check_email
		if !this.email_date
			this.email_warning_level = 'alert'
		elsif this.email_date < this.updated_at
			this.email_warning_level = 'warning'
		else
			this.email_warning_level = 'success'
		end
	end

	def after_initialize
		this.check_email
	end
end
