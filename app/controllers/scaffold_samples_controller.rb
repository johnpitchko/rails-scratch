class ScaffoldSamplesController < ApplicationController
  before_action :set_scaffold_sample, only: %i[ show edit update destroy ]

  # GET /scaffold_samples or /scaffold_samples.json
  def index
    @scaffold_samples = ScaffoldSample.all
  end

  # GET /scaffold_samples/1 or /scaffold_samples/1.json
  def show
  end

  # GET /scaffold_samples/new
  def new
    @scaffold_sample = ScaffoldSample.new
  end

  # GET /scaffold_samples/1/edit
  def edit
  end

  # POST /scaffold_samples or /scaffold_samples.json
  def create
    @scaffold_sample = ScaffoldSample.new(scaffold_sample_params)

    respond_to do |format|
      if @scaffold_sample.save
        format.html { redirect_to @scaffold_sample, notice: "Scaffold sample was successfully created." }
        format.json { render :show, status: :created, location: @scaffold_sample }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scaffold_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffold_samples/1 or /scaffold_samples/1.json
  def update
    respond_to do |format|
      if @scaffold_sample.update(scaffold_sample_params)
        format.html { redirect_to @scaffold_sample, notice: "Scaffold sample was successfully updated." }
        format.json { render :show, status: :ok, location: @scaffold_sample }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scaffold_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffold_samples/1 or /scaffold_samples/1.json
  def destroy
    @scaffold_sample.destroy
    respond_to do |format|
      format.html { redirect_to scaffold_samples_url, notice: "Scaffold sample was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffold_sample
      @scaffold_sample = ScaffoldSample.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scaffold_sample_params
      params.require(:scaffold_sample).permit(:some_text)
    end
end
