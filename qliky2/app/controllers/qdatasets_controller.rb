class QdatasetsController < ApplicationController
  before_action :set_qdataset, only: [:show, :edit, :update, :destroy]

  # GET /qdatasets
  # GET /qdatasets.json
  def index
    @qdatasets = Qdataset.all
  end

  # GET /qdatasets/1
  # GET /qdatasets/1.json
  def show
  end

  # GET /qdatasets/new
  def new
    @qdataset = Qdataset.new
  end

  # GET /qdatasets/1/edit
  def edit
  end

  # POST /qdatasets
  # POST /qdatasets.json
  def create
    @qdataset = Qdataset.new(qdataset_params)

    respond_to do |format|
      if @qdataset.save
        format.html { redirect_to @qdataset, notice: 'Qdataset was successfully created.' }
        format.json { render :show, status: :created, location: @qdataset }
      else
        format.html { render :new }
        format.json { render json: @qdataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qdatasets/1
  # PATCH/PUT /qdatasets/1.json
  def update
    respond_to do |format|
      if @qdataset.update(qdataset_params)
        format.html { redirect_to @qdataset, notice: 'Qdataset was successfully updated.' }
        format.json { render :show, status: :ok, location: @qdataset }
      else
        format.html { render :edit }
        format.json { render json: @qdataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qdatasets/1
  # DELETE /qdatasets/1.json
  def destroy
    @qdataset.destroy
    respond_to do |format|
      format.html { redirect_to qdatasets_url, notice: 'Qdataset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qdataset
      @qdataset = Qdataset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qdataset_params
      params.require(:qdataset).permit(:displayname, :qmail, :encrypass, :qsubscriber, :qoid)
    end
end
