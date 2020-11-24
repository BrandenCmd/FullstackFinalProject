class AsteroidController < ApplicationController
  def index
    @asteroids = Asteroid.page(params[:page]).per(9).all
  end

  def show
    @asteroid = Asteroid.find(params[:id])
    @asteroid_type = AsteroidType.find(@asteroid.asteroid_type.id)
  end

  def alphabetized
    @asteroids_alphabetized = Asteroid.order(:name).page(params[:page]).per(9).all
  end

  def newest
    @asteroids_newest = Asteroid.where("created_at < ?", 3.days.ago).page(params[:page]).per(9).all
  end

  def hightolow
    @asteroids_hightolow = Asteroid.order(cost: :desc).page(params[:page]).per(9).all
  end

  def lowtohigh
    @asteroids_lowtohigh = Asteroid.order(:cost).page(params[:page]).per(9).all
  end
end
