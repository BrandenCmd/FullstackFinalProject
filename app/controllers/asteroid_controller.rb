class AsteroidController < ApplicationController
  def index
    @asteroids = Asteroid.all
  end

  def show; end

  def alphabetized
    @asteroids_alphabetized = Asteroid.order(:name).all
  end

  def newest
    @asteroids_newest = Asteroid.where("created_at < ?", 3.days.ago).all
  end

  def hightolow
    @asteroids_hightolow = Asteroid.order(:cost).all
  end

  def lowtohigh
    @asteroids_lowtohigh = Asteroid.order(cost: :desc).all
  end
end
