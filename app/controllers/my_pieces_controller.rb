class MyPiecesController < ApplicationController

  def index
    @pieces = ["Section 1", "Section 2"]
  end

  def show
    @piece = Piece.find(params[:id])
  end

end
