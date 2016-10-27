class SignsController < ApplicationController
 	def index
    @signs = Sign.all
  end

  def new
    @signs = Sign.new
  end

  def show
    @sign = Sign.find(params[:id])
  end

  def create
  end
end
