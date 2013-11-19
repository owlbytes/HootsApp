class UsersController < Devise::RegistrationsController
  # GET /users
  # GET /users.json

  before_filter :authenticate_user!, except: [:index]
  authorize_resource

  def index
    users = User.all
    total_score = 0
    users.each do |user|
      total_score = 0
      scores = [0]
      user.posts.each do |post|
        total_score = total_score + post.score
        scores << post.score
      end
      user.score = total_score
      user.top_score = scores.max
    end
    @users = users.sort_by{ |a| a.score }.reverse
  end

  # def assign_favourite_user
  #   fav_user = User.find(params[:id])
  #   curr_user = User.find(current_user.id)

  #   fav_users = curr_user.destring(curr_user)
  #   fav_users.push(fav_user.id)
  #   curr_user.fav_users = fav_users.to_s
  #   curr_user.save
  # end


  def favourites
    render :favourites
  end



  # GET /users/1
  # GET /users/1.json
  # def show
  #   @user = User.find(params[:id])
  # end

  # GET /users/new
  # GET /users/new.json
  # def new
  #   super
  # end

  # GET /users/1/edit
  # def edit
  #   @user = User.find(params[:id])
  # end

  # POST /users
  # POST /users.json
  # def create
  #   super
  #   @user.role = 'user'
  #   @user.save
  #   @user = User.new(params[:user])
  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to @user, notice: 'User was successfully created.' }
  #     else
  #       format.html { render action: "new" }
  #     end
  #   end
  # end

  # PUT /users/1
  # PUT /users/1.json
  # def update
  #   @user = User.find(params[:id])

  #   respond_to do |format|
  #     if @user.update_attributes(params[:user])
  #       format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /users/1
  # DELETE /users/1.json
#   def destroy
#     @user = User.find(params[:id])
#     @user.destroy

#     respond_to do |format|
#       format.html { redirect_to users_url }
#       format.json { head :no_content }
#     end
#   end
end

