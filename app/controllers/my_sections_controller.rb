class MySectionsController < ApplicationController

  def index
    @sections = ["Line 1", "Line 2"]
  end

  def show
    @section = Section.find(params[:id])
  end

end
