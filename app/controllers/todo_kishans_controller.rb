class TodoKishansController < ApplicationController
  before_action :set_todo_kishan, only: %i[ show edit update destroy ]

  # GET /todo_kishans or /todo_kishans.json
  def index
    @todo_kishans = TodoKishan.all
  end

  # GET /todo_kishans/1 or /todo_kishans/1.json
  def show
  end

  # GET /todo_kishans/new
  def new
    @todo_kishan = TodoKishan.new
  end

  # GET /todo_kishans/1/edit
  def edit
  end

  # POST /todo_kishans or /todo_kishans.json
  def create
    @todo_kishan = TodoKishan.new(todo_kishan_params)

    respond_to do |format|
      if @todo_kishan.save
        format.html { redirect_to todo_kishan_url(@todo_kishan), notice: "Todo kishan was successfully created." }
        format.json { render :show, status: :created, location: @todo_kishan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todo_kishan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_kishans/1 or /todo_kishans/1.json
  def update
    respond_to do |format|
      if @todo_kishan.update(todo_kishan_params)
        format.html { redirect_to todo_kishan_url(@todo_kishan), notice: "Todo kishan was successfully updated." }
        format.json { render :show, status: :ok, location: @todo_kishan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todo_kishan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_kishans/1 or /todo_kishans/1.json
  def destroy
    @todo_kishan.destroy

    respond_to do |format|
      format.html { redirect_to todo_kishans_url, notice: "Todo kishan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_kishan
      @todo_kishan = TodoKishan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_kishan_params
      params.require(:todo_kishan).permit(:title)
    end
end
