class TrialBalance < ActiveRecord::Base

	after_initialize :set_last_month, :get_total_hours

private

	def set_last_month
	    today = Date.today

	    if today.month - 1 == 0
	      self.year = today.year - 1
	      self.month = 12
	    else
	      self.year = today.year
	      self.month = today.month - 1
	    end
	end

	def get_total_hours
		last_day = Date.parse(self.year.to_s + "-" + self.month.to_s + "-01").end_of_month
		self.totalHours = Visit.month_status(last_day.to_s)
	end

end
