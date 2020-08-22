class UsersController < ApplicationController
  # before_action :authenticate_request!, except: [:create, :login] # Exclude this route from authentication
  before_action :set_user, only: [:show, :update, :destroy]

  def login
    @user = User.find_by(email: user_params[:email]) ||
    @user = User.find_by(username: user_params[:email])
    # # byebug
    # if user&.authenticate(user_params[:opaque])
    #   auth_token = JsonWebToken.encode(user_id: @user.id)
    #   render json: { auth_token: auth_token, email: @user.email, id: @user.id }, status: :ok
    # else
    # render json: { error: 'Invalid username/password' }, status: :unauthorized
    if @user
      # auth_token = JsonWebToken.encode(user_id: @user.id)
      # render json: { auth_token: auth_token, email: @user.email, id: @user.id }, status: :ok
      render json: { email: @user.email, id: @user.id , opaque: @opaque}, status: :ok
    else
    render json: { error: 'Invalid username/password' }, status: :unauthorized
    end
  end

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params.except(:opaque, :opaque_two))
    @email = User.find_by(email: user_params[:email])
    @username = User.find_by(username: user_params[:username])
    # @user.password = user_params[:opaque]
    # && @user.authenticate(user_params[:opaque]) #this went with the if condition below
    if @user.save 
      # auth_token = JsonWebToken.encode(user_id: @user.id)
      # render json: { auth_token: auth_token, id: @user.id  }, status: :ok
      render json: { user: @user  }, status: :ok
    elsif @email 
      render json: { error: 'That email is already registered' }, status: :unprocessable_entity
    elsif @username 
      render json: { error: 'That username is taken' }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :username, :website, :img_url, :email, :opaque, :opaque_two) ##password and password confirmation keys were removed 8/20
    end
end
