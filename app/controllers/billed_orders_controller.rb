class BilledOrdersController < ApplicationController
  # GET /billed_orders
  # GET /billed_orders.json
  def index
    @orders = Order.billed_orders

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /billed_orders/1
  # GET /billed_orders/1.json
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

end
