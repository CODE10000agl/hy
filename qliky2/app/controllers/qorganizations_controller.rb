class QorganizationsController < ApplicationController
  before_action :set_qorganizations, only: [:show, :edit, :update, :destroy]

  # GET /qorganizations
  # GET /qorganizations.json
  def index
    @qorganizations = Qorganization.all
  end

  # GET /qorganizations/1
  # GET /qorganizations/1.json
  def show
  end

  # GET /qorganizations/new
  def new
    @qorganization = Qorganization.new
  end

  # GET /qorganizations/1/edit
  def edit
  end

  # POST /qorganizations
  # POST /qorganizations.json
  def create
    @qorganization = Qorganization.new(qorganization_params)

    respond_to do |format|
      if @qorganization.save
        format.html { redirect_to @qorganization, notice: 'Qorganization was successfully created.' }
        format.json { render :show, status: :created, location: @qorganization }
      else
        format.html { render :new }
        format.json { render json: @qorganization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qorganizations/1
  # PATCH/PUT /qorganizations/1.json
  def update
    respond_to do |format|
      if @qorganization.update(qorganization_params)
        format.html { redirect_to @qorganization, notice: 'Qorganization was successfully updated.' }
        format.json { render :show, status: :ok, location: @qorganization }
      else
        format.html { render :edit }
        format.json { render json: @qorganization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qorganizations/1
  # DELETE /qorganizations/1.json
  def destroy
    @qorganization.destroy
    respond_to do |format|
      format.html { redirect_to qorganizations_url, notice: 'Qorganization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qorganization
      @qorganization = Qorganization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qorganization_params
      params.require(:qorganization).permit(:displayname, :qmail, :encrypass, :qsubscriber, :qoid)
    end
end
