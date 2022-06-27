class KingsController < ApplicationController
  before_action :set_king, only: %i[ show edit update destroy ]

  # GET /kings or /kings.json
  def index
    @kings = King.all
  end

  # GET /kings/1 or /kings/1.json
  def show
  end

  # GET /kings/new
  def new
    @king = King.new
  end

  # GET /kings/1/edit
  def edit
  end

  # POST /kings or /kings.json
  def create
    @king = King.new(king_params)

    respond_to do |format|
      if @king.save
        format.html { redirect_to king_url(@king), notice: "King was successfully created." }
        format.json { render :show, status: :created, location: @king }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @king.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kings/1 or /kings/1.json
  def update
    respond_to do |format|
      if @king.update(king_params)
        format.html { redirect_to king_url(@king), notice: "King was successfully updated." }
        format.json { render :show, status: :ok, location: @king }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @king.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kings/1 or /kings/1.json
  def destroy
    @king.destroy

    respond_to do |format|
      format.html { redirect_to kings_url, notice: "King was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_king
      @king = King.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def king_params
      params.fetch(:king, {})
    end
end
