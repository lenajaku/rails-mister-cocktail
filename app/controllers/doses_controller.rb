class DosesController < ApplicationController
  # def new
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @dose = Dose.new
  # end

  def create
   @cocktail = Cocktail.find(params[:cocktail_id])
   @dose = Dose.new
   @description = params[:dose][:description]
   @ingredient = Ingredient.find(params[:dose][:ingredient_id])
   @dose.cocktail = @cocktail
   @dose.description = @description
   @dose.ingredient = @ingredient
   @dose.save!
   redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
