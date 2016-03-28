class MyLinesController < ApplicationController

  def index
    @lines = ["Line 1", "Line 2"]
  end

  def show
    @line = Line.find(params[:id])
  end

end
