class TrialBalance < ActiveRecord::Base

	after_initialize :set_last_month

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

end
