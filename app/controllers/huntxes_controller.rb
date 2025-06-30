class HuntxesController < ApplicationController
  def index
    @huntxes = Huntx.all
  end

  def show
    @huntx = Huntx.find(params[:id])
  end
end
