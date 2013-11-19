class SlideshowController < ApplicationController
  def index
    @Posts.all
    @top_posts = Post.order("score DESC").limit(10).all
  end
end 