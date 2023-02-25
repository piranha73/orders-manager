class TablesController < ApplicationController
  def index
    @tables = Table.all
  end

  def show
    @table = Table.find(params[:id])
  end
  
  def new
    @table = Table.new
  end

  def create
    @table = Table.new(table_params)
    if @table.save
      redirect_to table_path(@table)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
    redirect_to tables_path, status: :see_other
  end

  private

  def table_params
    params.require(:table).permit(:name)
  end
end
