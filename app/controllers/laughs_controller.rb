class LaughsController < ApplicationController
  def new
    @laugh = Laugh.new
  end

  def create
    @laugh = Laugh.new(laugh_params)

    if @laugh.save
      redirect_to @laugh
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @laughs = Laugh.all
  end

  def show
    @laugh = Laugh.find(params[:id])
  end

  private

    def laugh_params
      params.require(:laugh).permit(:type_id, :url)
    end
end
