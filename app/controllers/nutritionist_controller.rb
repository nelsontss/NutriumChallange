class NutritionistController < ApplicationController
  def search
    @nutritionist = Nutritionist.where(["name LIKE ?", "%#{params[:name]}%"]).first
  end
end
