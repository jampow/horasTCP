class Reporter < ApplicationMailer
	default from: "gianpaulosoares@gmail.com"

	add_template_helper(ApplicationHelper)

	def visit(visit)
		@visit = visit
		mail(to: "jam_pow@hotmail.com", subject: "Manutenção " + visit.day.strftime("%d/%m/%Y") )
	end
end
