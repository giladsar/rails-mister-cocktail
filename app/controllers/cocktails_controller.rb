class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find (params[:id])
    @doses = @cocktail.doses
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.new(set_params)
    if cocktail.save
      redirect_to new_cocktail_dose_path(cocktail)
    else
      render :new
    end
  end

  private

  def set_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
