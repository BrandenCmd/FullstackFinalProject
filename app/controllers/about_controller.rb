class AboutController < ApplicationController
  def index
    @about = About.take
  end
end
