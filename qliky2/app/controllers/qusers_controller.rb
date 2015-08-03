class QusersController < ApplicationController
  before_action :set_quser, only: [:show, :edit, :update, :destroy]

  # GET /qusers
  # GET /qusers.json
  def index
    @qusers = Quser.all
  end

  # GET /qusers/1
  # GET /qusers/1.json
  def show
  end

  # GET /qusers/new
  def new
    @quser = Quser.new
  end

  # GET /qusers/1/edit
  def edit
  end

  # POST /qusers
  # POST /qusers.json
  def create
    @quser = Quser.new(quser_params)

    respond_to do |format|
      if @quser.save
        format.html { redirect_to @quser, notice: 'Quser was successfully created.' }
        format.json { render :show, status: :created, location: @quser }
      else
        format.html { render :new }
        format.json { render json: @quser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qusers/1
  # PATCH/PUT /qusers/1.json
  def update
    respond_to do |format|
      if @quser.update(quser_params)
        format.html { redirect_to @quser, notice: 'Quser was successfully updated.' }
        format.json { render :show, status: :ok, location: @quser }
      else
        format.html { render :edit }
        format.json { render json: @quser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qusers/1
  # DELETE /qusers/1.json
  def destroy
    @quser.destroy
    respond_to do |format|
      format.html { redirect_to qusers_url, notice: 'Quser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quser
      @quser = Quser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quser_params
      params.require(:quser).permit(:displayname, :qmail, :encrypass, :qsubscriber, :qoid)
    end
end
