# app/controllers/users_controller.rb

class UsersController < ApplicationController
    def index
      @users = User.all
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
    end
  end
  