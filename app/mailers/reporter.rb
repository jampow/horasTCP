class Reporter < ApplicationMailer
	default from: ENV['gmail_username']

	add_template_helper(ApplicationHelper)

	def visit(visit)
		@visit = visit
		mail(to: ENV['visits_to'], subject: "Manutenção " + visit.day.strftime("%d/%m/%Y") )
	end
end
