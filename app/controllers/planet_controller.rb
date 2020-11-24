class PlanetController < ApplicationController
  def index
    @planets = Planet.page(params[:page]).per(9).all
  end

  def show
    @planet = Planet.find(params[:id])
    @planet_type = PlanetType.find(@planet.planet_type.id)
  end

  def alphabetized
    @planets_alphabetized = Planet.order(:name).page(params[:page]).per(9).all
  end

  def newest
    @planets_newest = Planet.where("created_at > ?", 3.days.ago).page(params[:page]).per(9).all
  end

  def hightolow
    @planets_hightolow = Planet.order(cost: :desc).page(params[:page]).per(9).all
  end

  def lowtohigh
    @planets_lowtohigh = Planet.order(:cost).page(params[:page]).per(9).all
  end
end
