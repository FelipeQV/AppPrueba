class StudiosController < ApplicationController
  before_action :set_studio, only: [:show, :edit, :update, :destroy]

  def index
    @studios = Studio.all
  end

  def new
    Studio.new

  end

  def create
    @studio = Studio.new(studio_params)

    if @studio.save
      redirect_to studio_path(@studio)
    else
      render :new
    end
  end

  def show
    @studio = Studio.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @studio = Studio.find(params[:id])
    @studio.destroy
    redirect_to studios_path
  end

  private

  def studio_params
    params.require(:studio).permit(:name, :description)
  end
end
end
