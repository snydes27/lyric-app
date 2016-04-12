class MyLinesController < ApplicationController

  def index
    @line = Line.all
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
     @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    @line.update(line_params)
    redirect_to @line
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(line_params)
    @line.save
    redirect_to @line
  end

private

  def line_params
    params.require(:line).permit(:content)
  end

end
