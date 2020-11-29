class StarsController < ApplicationController
  def index
    @stars = Star.page(params[:page]).per(9).all

    @q = Star.ransack(params[:q])
    @stars = @q.result.includes(:star_type).page(params[:page]).per(9)
  end

  def show
    @star = Star.find(params[:id])
    @star_type = StarType.find(@star.star_type.id)
  end

  def alphabetized
    @stars_alphabetized = Star.order(:name).page(params[:page]).per(9).all
  end

  def newest
    @stars_newest = Star.where("created_at > ?", 3.days.ago).page(params[:page]).per(9).all
  end

  def hightolow
    @stars_hightolow = Star.order(cost: :desc).page(params[:page]).per(9).all
  end

  def lowtohigh
    @stars_lowtohigh = Star.order(:cost).page(params[:page]).per(9).all
  end
end
