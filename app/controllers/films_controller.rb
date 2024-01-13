# app/controllers/films_controller.rb

class FilmsController < ApplicationController
  helper_method :styling_for_user_film # Add this line to make the helper method accessible in the view

  def index
    if params[:user_id].present?
      @user = User.find(params[:user_id])
    end
    @all_films = Film.all
  end
  
  def compare
    # Fetch users from params
    usernames = params[:usernames].split(',')
    @users = User.where(username: usernames)

    # Fetch all films
    @all_films = Film.all

    # Prepare films seen by each user
    @films_seen_by_users = {}
    @users.each do |user|
      @films_seen_by_users[user.id] = user.viewings.pluck(:film_id)
    end

    # Prepare films unseen by any user
    @unseen_films = @all_films.reject do |film|
      @films_seen_by_users.any? { |user_id, seen_films| seen_films.include?(film.id) }
    end
  end

  def compare_index
    # This action is used to render the compare_index view
  end

  def show
    @film = Film.find(params[:id])
  end


  def user_films
    @user = User.find(params[:user_id])
    @all_films = Film.all
  end


  private

  def styling_for_user_film(user, film)
    if @unseen_films.include?(film)
      'background-color: green;'
    elsif @films_seen_by_users[user.id].include?(film.id)
      'text-decoration: line-through;'
    else
      'font-weight: bold;'
    end
  end
  
end

