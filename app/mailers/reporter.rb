class Reporter < ApplicationMailer
	default from: "gianpaulosoares@gmail.com"

	def visit
		mail(to: "jam_pow@hotmail.com", subject: "e-mail teste")
	end
end
