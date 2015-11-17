class EmailController < ApplicationController
  def visit
  	@visit = Visit.find params[:id]

  	if @visit
      Reporter.visit(@visit).deliver_now

      redirect_to visit_url(@visit), notice: 'E-mail enviado com sucesso'
	else
	  redirect_to visits_url, notice: 'Visita não encontrada'
  	end
  end
end
