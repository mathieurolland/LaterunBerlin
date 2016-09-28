class RacesController < ApplicationController
  def index
    @races = Race.all
  end

  def show
  end

  private

  # def race_params
  #   params[:race].permit(:name, :date, :address, :distance)
  # end

  def find_race
    @race = Race.find(params[:id])
  end
end
