class NutritionistController < ApplicationController
  def search
    #devolve uma lista de nutricionistas, filtrada pelo tipo de nutricionista e pela cidade onde esta a sua clinica
    @nutritionists = Nutritionist.joins(:clinic).where(["city LIKE ?", "%#{params[:city]}%"])
                        .where(["nutritionist_type LIKE ?" , "%#{params[:nt_type]}%"])
  end
end
