class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new 
    cat = Cat.new(params.require(:cat).permit(:age, :birth_date, :color, :sex, :name, :description))
    if cat.save
        render json: cat
    else
      render json: cat.errors.full_messages, status: :unprocessable_entity
    end
  end


end