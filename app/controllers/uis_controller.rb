# frozen_string_literal: true
class UisController < OpenReadController
  before_action :set_ui, only: [:show, :update, :destroy]

  # GET /ui
  # GET /ui.json
  def index
    @ui = Ui.all

    render json: @ui
  end

  # GET /ui/1
  # GET /ui/1.json
  def show
    render json: @ui
  end

  # POST /ui
  # POST /ui.json
  def create
    @ui = Ui.new(ui_params)

    if @ui.save
      render json: @ui, status: :created, location: @ui
    else
      render json: @ui.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ui/1
  # PATCH/PUT /ui/1.json
  def update
    @ui = Ui.find(params[:id])

    if @ui.update(ui_params)
      head :no_content
    else
      render json: @ui.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ui/1
  # DELETE /ui/1.json
  def destroy
    @ui.destroy

    head :no_content
  end

  private

  def set_ui
    @ui = Ui.find(params[:id])
  end

  def ui_params
    params.require(:ui).permit(:catagory, :convention, :overview, :carousel, :body)
  end
end
