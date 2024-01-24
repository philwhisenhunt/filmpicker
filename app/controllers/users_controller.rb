# app/controllers/users_controller.rb

class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: 'User was successfully created.'
      else
        render :new
      end
    end
  
    def show
      @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :username)
    end
      

    def film_list
      @user = User.find(params[:id])
      @all_films = Film.all

      respond_to do |format|
        format.html # Render HTML view
        format.turbo_stream # Respond to Turbo Streams
      end
    end
  end
  