class PlanetController < ApplicationController
  def index
    @planets = Planet.page(params[:page]).per(9).all
  end

  def show; end

  def alphabetized
    @planets_alphabetized = Planet.order(:name).all
  end

  def newest
    @planets_newest = Planet.where("created_at < ?", 3.days.ago).all
  end

  def hightolow
    @planets_hightolow = Planet.order(:cost).all
  end

  def lowtohigh
    @planets_lowtohigh = Planet.order(cost: :desc).all
  end
end
