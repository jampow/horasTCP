# Preview all emails at http://localhost:3000/rails/mailers/reporter
class ReporterPreview < ActionMailer::Preview
	def visit_preview
		Reporter.visit
	end
end
