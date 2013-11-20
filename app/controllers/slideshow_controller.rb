class SlideshowController < ApplicationController
  def index
    @top_posts = Post.order("score DESC").limit(10).all
  end
end 