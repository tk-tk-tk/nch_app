class BoardsController < ApplicationController
 	def index
    @boards = Board.all
  end

  def new
    @boards = Board.new
  end

  def show
    @boards = Board.find(params[:id])
  end

  def create
    # @boards = Board.new(params[:board][:title], params[:board][:editor])
    @boards = Board.new(boards_params)
    if @boards.save
      redirect_to @boards
    else
      redirect_to root_path
    end
  end

  private

  def boards_params
    params.require(:board).permit(:title, :editor)
  end

end
