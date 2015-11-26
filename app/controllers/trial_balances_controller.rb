class TrialBalancesController < ApplicationController
  before_action :set_trial_balance, only: [:show, :edit, :update, :destroy]

  # GET /trial_balances
  # GET /trial_balances.json
  def index
    @trial_balances = TrialBalance.all
  end

  # GET /trial_balances/1
  # GET /trial_balances/1.json
  def show
  end

  # GET /trial_balances/new
  def new
    @trial_balance = TrialBalance.new
  end

  # GET /trial_balances/1/edit
  def edit
  end

  # POST /trial_balances
  # POST /trial_balances.json
  def create
    @trial_balance = TrialBalance.new(trial_balance_params)

    respond_to do |format|
      if @trial_balance.save
        format.html { redirect_to @trial_balance, notice: 'Trial balance was successfully created.' }
        format.json { render :show, status: :created, location: @trial_balance }
      else
        format.html { render :new }
        format.json { render json: @trial_balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trial_balances/1
  # PATCH/PUT /trial_balances/1.json
  def update
    respond_to do |format|
      if @trial_balance.update(trial_balance_params)
        format.html { redirect_to @trial_balance, notice: 'Trial balance was successfully updated.' }
        format.json { render :show, status: :ok, location: @trial_balance }
      else
        format.html { render :edit }
        format.json { render json: @trial_balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trial_balances/1
  # DELETE /trial_balances/1.json
  def destroy
    @trial_balance.destroy
    respond_to do |format|
      format.html { redirect_to trial_balances_url, notice: 'Trial balance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trial_balance
      @trial_balance = TrialBalance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trial_balance_params
      params.require(:trial_balance).permit(:year, :month, :totalHours, :valueHour, :valueMonth)
    end
end
