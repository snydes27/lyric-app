class MySectionsController < ApplicationController

  def index
    @section = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    @section.update(section_params)
    redirect_to @section
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    @section.save
    redirect_to @section
  end

private

  def section_params
    params.require(:section).permit(:content)
  end


end
