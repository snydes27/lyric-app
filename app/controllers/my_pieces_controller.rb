class MyPiecesController < ApplicationController

  def index
    @piece = Piece.all
  end

  def show
    @piece = Piece.find(params[:id])
  end

  def edit
    @piece = Piece.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:id])
    @piece.update(piece_params)
    redirect_to @piece
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    @piece.save
    redirect_to @piece
  end

private

  def piece_params
    params.require(:piece).permit(:title, :content)
  end

end
