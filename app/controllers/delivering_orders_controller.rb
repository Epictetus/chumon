class DeliveringOrdersController < ApplicationController
  before_filter :login_required
  before_filter :protected_from_others

  # GET /delivering_orders
  # GET /delivering_orders.json
  def index
    @orders = Order.delivering_orders

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /delivering_orders/1
  # GET /delivering_orders/1.json
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  private

  def protected_from_others
    unless current_user.delivery_operator?
      respond_to do |format|
        format.html { redirect_to '/top' }
        format.json { head :no_content }
      end
    end
  end

end
