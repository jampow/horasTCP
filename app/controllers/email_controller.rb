class EmailController < ApplicationController
  def visit
    @visit = Visit.find_by_id params[:id]

    if @visit
      begin
        Reporter.visit(@visit).deliver_now
      rescue StandardError => e
        flash[:error] = "Problems sending e-mail"
      end

      @visit.email_date = DateTime.now
      @visit.save

      redirect_to visit_url(@visit), notice: 'E-mail enviado com sucesso'
    else
      redirect_to visits_url, notice: 'Visita não encontrada'
    end
  end
end
