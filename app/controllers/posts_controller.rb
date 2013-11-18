class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json

  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
    end
  end

  def vote
    # check if a user has already voted and if they are clicking on same action thereby nullifying it
    if post.user_voted_check(post) then
      if post.scores.find_by_user_id(current_user.id).score == params[:score]
        post.scores.find_by_id(current_user.id).score = 0
      else
        post.scores.find_by_id(current_user.id).score = params[:score]
    else
      # creating score -  there has to be a more consise way of doing this
      @score = Score.new                
      @score.user_id = current_user.id
      @score.post_id = params[:id]
      @score.score = params[:score]
    post = Post.find(params[:id])

    

    respond_to do |format|
      if @score.save
        format.html { redirect_to post, notice: "You've voted! Thanks." }
      else
        format.html { redirect_to post, notice: "Oops something went wrong, please try again" }
      end
    end
  end
end
