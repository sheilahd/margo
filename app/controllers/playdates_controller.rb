class PlaydatesController < ApplicationController
  before_action :set_playdate, only: %i[ show edit update destroy ]

  # GET /playdates or /playdates.json
  def index
    @playdates = Playdate.all
  end

  # GET /playdates/1 or /playdates/1.json
  def show
  end

  # GET /playdates/new
  def new
    @playdate = Playdate.new
  end

  # GET /playdates/1/edit
  def edit
  end

  # POST /playdates or /playdates.json
  def create
    @playdate = Playdate.new(playdate_params)

    respond_to do |format|
      if @playdate.save
        format.html { redirect_to playdate_url(@playdate), notice: "Playdate was successfully created." }
        format.json { render :show, status: :created, location: @playdate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @playdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playdates/1 or /playdates/1.json
  def update
    respond_to do |format|
      if @playdate.update(playdate_params)
        format.html { redirect_to playdate_url(@playdate), notice: "Playdate was successfully updated." }
        format.json { render :show, status: :ok, location: @playdate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @playdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playdates/1 or /playdates/1.json
  def destroy
    @playdate.destroy

    respond_to do |format|
      format.html { redirect_to playdates_url, notice: "Playdate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playdate
      @playdate = Playdate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def playdate_params
      params.require(:playdate).permit(:title, :description, :start_time, :end_time)
    end
end
