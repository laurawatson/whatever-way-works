class TeamRetrosController < ApplicationController
  before_action :set_team_retro, only: %i[ show edit update destroy ]

  # GET /team_retros or /team_retros.json
  def index
    @team_retros = TeamRetro.all
  end

  # GET /team_retros/1 or /team_retros/1.json
  def show
  end

  # GET /team_retros/new
  def new
    @team_retro = TeamRetro.new
  end

  # GET /team_retros/1/edit
  def edit
  end

  # POST /team_retros or /team_retros.json
  def create
    @team_retro = TeamRetro.new(team_retro_params)

    respond_to do |format|
      if @team_retro.save
        format.html { redirect_to team_retro_url(@team_retro), notice: "Team retro was successfully created." }
        format.json { render :show, status: :created, location: @team_retro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_retro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_retros/1 or /team_retros/1.json
  def update
    respond_to do |format|
      if @team_retro.update(team_retro_params)
        format.html { redirect_to team_retro_url(@team_retro), notice: "Team retro was successfully updated." }
        format.json { render :show, status: :ok, location: @team_retro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_retro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_retros/1 or /team_retros/1.json
  def destroy
    @team_retro.destroy!

    respond_to do |format|
      format.html { redirect_to team_retros_url, notice: "Team retro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_retro
      @team_retro = TeamRetro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_retro_params
      params.require(:team_retro).permit(:team_id, :retros_id)
    end
end
