class CreditingOrdersController < ApplicationController
  before_filter :login_required

  # GET /crediting_orders
  # GET /crediting_orders.json
  def index
    @orders = Order.crediting_orders

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /crediting_orders/1
  # GET /crediting_orders/1.json
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

end
