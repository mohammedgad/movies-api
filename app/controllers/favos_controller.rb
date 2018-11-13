class FavosController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }
  before_action :authenticate_user
  before_action :set_favo, only: [:show, :update, :destroy]

  # GET /favos
  def index
    @favos = current_user.favos.all

    render json: @favos
  end

  # GET /favos/1
  def show
    render json: @favo
  end

  # POST /favos
  def create
    @favo = current_user.favos.new(favo_params)

    if @favo.save
      render json: @favo, status: :created, location: @favo
    else
      render json: @favo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favos/1
  def update
    if @favo.update(favo_params)
      render json: @favo
    else
      render json: @favo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favos/1
  def destroy
    @favo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favo
      @favo = current_user.favos.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def favo_params
      params.require(:favo).permit(:movie_title, :movie_id, :movie_poster, :movie_overview, :user_id)
    end
end
