class StarController < ApplicationController
  def index
    @stars = Star.all
  end

  def show; end

  def alphabetized
    @stars_alphabetized = Star.order(:name).all
  end

  def newest
    @stars_newest = Star.where("created_at < ?", 3.days.ago).all
  end

  def hightolow
    @stars_hightolow = Star.order(:cost).all
  end

  def lowtohigh
    @stars_lowtohigh = Star.order(cost: :desc).all
  end
end
