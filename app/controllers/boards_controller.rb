class BoardsController < ApplicationController
 	def index
    @boards = Board.all
  end

  def new
    @boards = Board.new
  end

  def create
    # binding.pry
    # @boards = Board.new(params[:board][:title], params[:board][:editor])
    @boards = Board.new(boards_params)
    if @boards.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def boards_params
    params.require(:board).permit(:title, :editor)
  end

end
