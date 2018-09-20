class KrMeasuresController < ApplicationController
  before_action :set_kr_measure, only: [:show, :edit, :update, :destroy]

  # GET /kr_measures
  # GET /kr_measures.json
  def index
    @kr_measures = KrMeasure.all
  end

  # GET /kr_measures/1
  # GET /kr_measures/1.json
  def show
  end

  # GET /kr_measures/new
  def new
    @kr_measure = KrMeasure.new
  end

  # GET /kr_measures/1/edit
  def edit
  end

  # POST /kr_measures
  # POST /kr_measures.json
  def create
    @kr_measure = KrMeasure.new(kr_measure_params)

    respond_to do |format|
      if @kr_measure.save
        format.html { redirect_to @kr_measure, notice: 'Kr measure was successfully created.' }
        format.json { render :show, status: :created, location: @kr_measure }
      else
        format.html { render :new }
        format.json { render json: @kr_measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kr_measures/1
  # PATCH/PUT /kr_measures/1.json
  def update
    respond_to do |format|
      if @kr_measure.update(kr_measure_params)
        format.html { redirect_to @kr_measure, notice: 'Kr measure was successfully updated.' }
        format.json { render :show, status: :ok, location: @kr_measure }
      else
        format.html { render :edit }
        format.json { render json: @kr_measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kr_measures/1
  # DELETE /kr_measures/1.json
  def destroy
    @kr_measure.destroy
    respond_to do |format|
      format.html { redirect_to kr_measures_url, notice: 'Kr measure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kr_measure
      @kr_measure = KrMeasure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kr_measure_params
      params.require(:kr_measure).permit(:name)
    end
end
