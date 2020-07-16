require 'mpesa_stk'
class MobilePaymentsController < ApplicationController
  before_action :set_mobile_payment, only: [:show, :edit, :update, :destroy]

  # GET /mobile_payments
  # GET /mobile_payments.json
  def index
    @mobile_payments = MobilePayment.all
  end

  # GET /mobile_payments/1
  # GET /mobile_payments/1.json
  def show
  end

  # GET /mobile_payments/new
  def new
    @mobile_payment = MobilePayment.new
  end

  # GET /mobile_payments/1/edit
  def edit
  end

  # POST /mobile_payments
  # POST /mobile_payments.json
  def create
    
    @mobile_payment = MobilePayment.new(mobile_payment_params)

    respond_to do |format|
      if @mobile_payment.save
        sleep 10
        # MpesaStk::PushPayment.call(mobile_payment_params[:amount], @user&.phone_number)
        format.html { redirect_to @mobile_payment, notice: 'Mobile payment was successfully created.' }
        format.json { render :show, status: :created, location: @mobile_payment }
      else
        format.html { render :new }
        format.json { render json: @mobile_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mobile_payments/1
  # PATCH/PUT /mobile_payments/1.json
  def update
    respond_to do |format|
      if @mobile_payment.update(mobile_payment_params)
        format.html { redirect_to @mobile_payment, notice: 'Mobile payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @mobile_payment }
      else
        format.html { render :edit }
        format.json { render json: @mobile_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobile_payments/1
  # DELETE /mobile_payments/1.json
  def destroy
    @mobile_payment.destroy
    respond_to do |format|
      format.html { redirect_to mobile_payments_url, notice: 'Mobile payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobile_payment
      @mobile_payment = MobilePayment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mobile_payment_params
      params.require(:mobile_payment).permit(:amount, :till_number, :reason_for_payment)
    end
end
