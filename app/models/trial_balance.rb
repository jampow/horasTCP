class TrialBalance < ActiveRecord::Base

	validates :month, uniqueness: { scope: :year }
	before_save :calc_total

	private

	def calc_total
		self.total = self.hour_price * self.worked_hours
	end
end
