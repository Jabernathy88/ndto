class PagesController < ApplicationController
  def home
    @large_url = 'large.webp'
    @medium_url = 'medium.jpg'
    @small_url = 'small.jpg'
    render layout: 'splash'
  end

  def dashboard
  end

  def tournament
  end
end
