class QviewsController < ApplicationController
  before_action :set_qviews, only: [:show, :edit, :update, :destroy]

  # GET /qviews
  # GET /qviews.json
  def index
    @qviews = Qview.all
  end

  # GET /qviews/1
  # GET /qviews/1.json
  def show
  end

  # GET /qviews/new
  def new
    @qview = Qview.new
  end

  # GET /qviews/1/edit
  def edit
  end

  # POST /qviews
  # POST /qviews.json
  def create
    @qview = Qview.new(qview_params)

    respond_to do |format|
      if @qview.save
        format.html { redirect_to @qview, notice: 'Qview was successfully created.' }
        format.json { render :show, status: :created, location: @qview }
      else
        format.html { render :new }
        format.json { render json: @qview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qviews/1
  # PATCH/PUT /qviews/1.json
  def update
    respond_to do |format|
      if @qview.update(qview_params)
        format.html { redirect_to @qview, notice: 'Qview was successfully updated.' }
        format.json { render :show, status: :ok, location: @qview }
      else
        format.html { render :edit }
        format.json { render json: @qview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qviews/1
  # DELETE /qviews/1.json
  def destroy
    @qview.destroy
    respond_to do |format|
      format.html { redirect_to qviews_url, notice: 'Qview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qview
      @qview = Qview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qview_params
      params.require(:qview)
#      In terms of security, the code below is preferred.
#      params.require(:qview).permit(:displayname, :qmail, :encrypass, :qsubscriber, :qoid)
    end
end
