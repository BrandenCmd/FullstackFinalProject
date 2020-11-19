class HomeController < ApplicationController
  def index
    @planet = Planet.take
    @star = Star.take
    @asteroid = Asteroid.take
  end
end
