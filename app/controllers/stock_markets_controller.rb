class StockMarketsController < ApplicationController
  before_action :set_stock_market, only: [:show, :edit, :update, :destroy]

  # GET /stock_markets
  # GET /stock_markets.json
  def index
    @stock_markets = StockMarket.all
  end

  # GET /stock_markets/1
  # GET /stock_markets/1.json
  def show
  end

  # GET /stock_markets/new
  def new
    @stock_market = StockMarket.new
  end

  # GET /stock_markets/1/edit
  def edit
  end

  # POST /stock_markets
  # POST /stock_markets.json
  def create
    @stock_market = StockMarket.new(stock_market_params)

    respond_to do |format|
      if @stock_market.save
        format.html { redirect_to @stock_market, notice: 'Stock market was successfully created.' }
        format.json { render :show, status: :created, location: @stock_market }
      else
        format.html { render :new }
        format.json { render json: @stock_market.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_markets/1
  # PATCH/PUT /stock_markets/1.json
  def update
    respond_to do |format|
      if @stock_market.update(stock_market_params)
        format.html { redirect_to @stock_market, notice: 'Stock market was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_market }
      else
        format.html { render :edit }
        format.json { render json: @stock_market.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_markets/1
  # DELETE /stock_markets/1.json
  def destroy
    @stock_market.destroy
    respond_to do |format|
      format.html { redirect_to stock_markets_url, notice: 'Stock market was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_market
      @stock_market = StockMarket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_market_params
      params.require(:stock_market).permit(:name, :about)
    end
end
