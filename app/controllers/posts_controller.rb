class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json

  before_filter :authenticate_user!, except: [:index, :show]
  authorize_resource

  def index
    @posts = Post.all
    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.order("created_at DESC")
    end

    # @top_posts = Post.order(score: :desc).limit(10).all
    # @latest_posts = Post.order(:created_at).limit(10)
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
    @post.user = current_user
    @post.score = 0
    @post.upvoters = "[-1]"
    @post.downvoters = "[-2]"


    respond_to do |format|
      puts
      puts @post.inspect
      puts
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
    @post = Post.find(params[:id])
    @upvoters, @downvoters = @post.deserialize(@post) #converts upvoters and downvoters from strings to arrays

    #logic for votes
    if (@upvoters.include? current_user.id) && (params[:score] == "1") then
      @post.score -= 1 
      @upvoters.delete(current_user.id)

    elsif (@upvoters.include? current_user.id) && (params[:score] == "-1") then
      @post.score -= 2
      @upvoters.delete(current_user.id)
      @downvoters.push(current_user.id)
    elsif (@downvoters.include? current_user.id) && (params[:score] == "1") then
      @post.score += 2
      @downvoters.delete(current_user.id)
      @upvoters.push(current_user.id)
    elsif (@downvoters.include? current_user.id) && (params[:score] == "-1") then
      @post.score += 1
      @downvoters.delete(current_user.id)
    elsif !(@downvoters.include? current_user.id) && !(@upvoters.include? current_user.id) then
      case params[:score]
      when "-1"
        @post.score -= 1
        @downvoters << current_user.id
      when "1"
        @post.score += 1
        @upvoters << current_user.id
      end
    end
    
    @post.upvoters = @upvoters.to_s
    @post.downvoters = @downvoters.to_s
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "You've voted! Thanks." }
      else
        format.html { redirect_to @post, notice: "Oops something went wrong, please try again" }
      end
    end
  end
end
