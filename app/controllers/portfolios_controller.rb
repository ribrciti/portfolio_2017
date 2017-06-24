class PortfoliosController < ApplicationController

  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio_items = Portfolio.all    
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def show    
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_item_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }        
      else
        format.html { render :new }        
      end
    end
  end

  def edit
  end

  def update
     @portfolio_item = Portfolio.new(portfolio_item_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }        
      else
        format.html { render :new }        
      end
    end
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }      
    end
  end

  private

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end

    def portfolio_item_params    # all code from .permit can be eliminated and whitelist will still occur  
        params.require(:portfolio).permit(:title, 
                                          :subtitle, 
                                          :body, 
                                          :main_image, 
                                          :thumb_image, 
                                          technologies_attributes: [:name]
                                        )
    end

end
