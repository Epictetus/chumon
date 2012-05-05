class ReceivedOrdersController < ApplicationController
  # GET /received_orders
  # GET /received_orders.json
  def index
    @orders = Order.received_orders

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /received_orders/1
  # GET /received_orders/1.json
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

end
