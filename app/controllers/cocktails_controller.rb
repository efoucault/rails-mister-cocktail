class CocktailsController < ApplicationController
  def index
    if params[:query]
      @cocktails = Cocktail.where("name LIKE '%#{params[:query]}%'")
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create!(cocktail_params)
    redirect_to cocktails_path
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end
end

private

def cocktail_params
  params.require(:cocktail).permit(:name, :picture, :photo)
end
