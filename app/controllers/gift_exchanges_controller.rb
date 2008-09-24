class GiftExchangesController < ApplicationController
  # GET /gift_exchanges
  # GET /gift_exchanges.xml
  def index
    @gift_exchanges = GiftExchange.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gift_exchanges }
    end
  end

  # GET /gift_exchanges/1
  # GET /gift_exchanges/1.xml
  def show
    @gift_exchange = GiftExchange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gift_exchange }
    end
  end

  # GET /gift_exchanges/new
  # GET /gift_exchanges/new.xml
  def new
    @gift_exchange = GiftExchange.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gift_exchange }
    end
  end

  # GET /gift_exchanges/1/edit
  def edit
    @gift_exchange = GiftExchange.find(params[:id])
  end

  # POST /gift_exchanges
  # POST /gift_exchanges.xml
  def create
    @gift_exchange = GiftExchange.new(params[:gift_exchange])

    respond_to do |format|
      if @gift_exchange.save
        flash[:notice] = 'GiftExchange was successfully created.'
        format.html { redirect_to(@gift_exchange) }
        format.xml  { render :xml => @gift_exchange, :status => :created, :location => @gift_exchange }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gift_exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gift_exchanges/1
  # PUT /gift_exchanges/1.xml
  def update
    @gift_exchange = GiftExchange.find(params[:id])

    respond_to do |format|
      if @gift_exchange.update_attributes(params[:gift_exchange])
        flash[:notice] = 'GiftExchange was successfully updated.'
        format.html { redirect_to(@gift_exchange) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gift_exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_exchanges/1
  # DELETE /gift_exchanges/1.xml
  def destroy
    @gift_exchange = GiftExchange.find(params[:id])
    @gift_exchange.destroy

    respond_to do |format|
      format.html { redirect_to(gift_exchanges_url) }
      format.xml  { head :ok }
    end
  end
end
