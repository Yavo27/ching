class AsksController < ApplicationController
  before_action :set_ask, only: [:show, :edit, :update, :destroy]

  # GET /asks
  # GET /asks.json
  def index
    @asks = Ask.all
  end

  # GET /asks/1
  # GET /asks/1.json
  def show
  end

  # GET /asks/new
  def new
    @ask = Ask.new
  end

  # GET /asks/1/edit
  def edit
  end

  # POST /asks
  # POST /asks.json
  def create
   # @hex = 'hexes/index'
    
    @ask = Ask.new(ask_params)

    respond_to do |format|
      if @ask.save
        format.html { redirect_to :controller => :hexes, :action => 'index' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /asks/1
  # PATCH/PUT /asks/1.json
  def update
    respond_to do |format|
      if @ask.update(ask_params)
        format.html { redirect_to @ask, notice: 'Ask was successfully updated.' }
        format.json { render :show, status: :ok, location: @ask }
      else
        format.html { render :edit }
        format.json { render json: @ask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asks/1
  # DELETE /asks/1.json
  def destroy
    @ask.destroy
    respond_to do |format|
      format.html { redirect_to asks_url, notice: 'Ask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ask
      @ask = Ask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ask_params
      params.require(:ask).permit(:question, :line1, :line2, :line3, :line4, :line5, :line6)
    end
end
