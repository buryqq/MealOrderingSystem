class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @incomplete_orders = Order.where(status: "open")
    @complete_orders = Order.where(status: ["finalized","ordered","delivered"])

  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order.meals.build
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
#   def create
#     @order = Order.new
# respond_to do |f|
#   f.html {
#     redirect_to orders_url
#   }
#   f.js
# end
#   end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_url, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
 
    @order.update_attributes(order_params)
 if @order.save
      redirect_to orders_url, notice: 'Order was successfully edited.'
 else
      render :edit
 end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :status, :user_id, meals_attributes: [ :id, :name, :price, :order_id , :user_id, :_destroy])
    end
end
