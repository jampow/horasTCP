class Reporter < ApplicationMailer
	default from: "gianpaulosoares@gmail.com"

	def visit(visit)
		@visit = visit
		mail(to: "jam_pow@hotmail.com", subject: "Manutenção " + visit.day.strftime("%d/%m/%Y") )
	end
end
