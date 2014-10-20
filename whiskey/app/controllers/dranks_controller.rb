class DranksController < ApplicationController
  def index
    @dranks = Drank.all
  end

  def show
    @drank = Drank.find(params[:id])
  end

  def new
    @drank = Drank.new
  end

  def create
    @drank = Drank.new(drank_params)
    if @drank.save
      # redirect to show and have a message
      redirect_to drank_path(@drank), notice: "Drank crafted"
    else
      render :new
    end
  end

  def edit
    @drank = Drank.find(params[:id])
  end

  def update
    @drank = Drank.find(params[:id])
    if @drank.update(drank_params)
      redirect_to drank_path(@drank), notice: "Drank updated"
    else
      render :edit
    end
  end

  private

  # strong_parameters ---> All about permission to set this list of fields
  def drank_params
    params.require(:drank).permit(:name, :description, :photo_url, :abv)
  end
end
