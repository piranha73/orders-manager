class OrdersController < ApplicationController
  def new
    @table = Table.find(params[:table_id])
    @order = Order.new
  end

  def create
    @table = Table.find(params[:table_id])
    @order = Order.new(order_params)
    @order.table = @table
    if @order.save
      redirect_to table_path(@table)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to table_path(@order.table)
  end

  private
  
  def order_params
    params.require(:order).permit(:meal_id)
  end
end
