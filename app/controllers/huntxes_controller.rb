class HuntxesController < ApplicationController
  before_action :set_huntx, only: [:show, :edit, :update, :destroy]

  def index
    @huntxes = Huntx.all
  end

  def show
  end

  def new
    @huntx = Huntx.new
  end

  def create
    @huntx = Huntx.new(huntx_params)
    if @huntx.save
      redirect_to @huntx, notice: 'Huntx was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @huntx.update(huntx_params)
      redirect_to @huntx, notice: 'Huntx was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @huntx.destroy
    redirect_to huntxes_path, notice: 'Huntx was successfully destroyed.'
  end

  private

  def set_huntx
    @huntx = Huntx.find(params[:id])
  end

  def huntx_params
    params.require(:huntx).permit(:title)
  end
end
