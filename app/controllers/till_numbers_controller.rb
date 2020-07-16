class TillNumbersController < ApplicationController
  before_action :set_till_number, only: [:show, :edit, :update, :destroy]

  # GET /till_numbers
  # GET /till_numbers.json
  def index
    @till_numbers = TillNumber.all
  end

  # GET /till_numbers/1
  # GET /till_numbers/1.json
  def show
  end

  # GET /till_numbers/new
  def new
    @till_number = TillNumber.new
  end

  # GET /till_numbers/1/edit
  def edit
  end

  # POST /till_numbers
  # POST /till_numbers.json
  def create
    @till_number = TillNumber.new(till_number_params)

    respond_to do |format|
      if @till_number.save
        format.html { redirect_to @till_number, notice: 'Till number was successfully created.' }
        format.json { render :show, status: :created, location: @till_number }
      else
        format.html { render :new }
        format.json { render json: @till_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /till_numbers/1
  # PATCH/PUT /till_numbers/1.json
  def update
    respond_to do |format|
      if @till_number.update(till_number_params)
        format.html { redirect_to @till_number, notice: 'Till number was successfully updated.' }
        format.json { render :show, status: :ok, location: @till_number }
      else
        format.html { render :edit }
        format.json { render json: @till_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /till_numbers/1
  # DELETE /till_numbers/1.json
  def destroy
    @till_number.destroy
    respond_to do |format|
      format.html { redirect_to till_numbers_url, notice: 'Till number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_till_number
      @till_number = TillNumber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def till_number_params
      params.require(:till_number).permit(:doctor_name, :contact_number, :till_number)
    end
end
