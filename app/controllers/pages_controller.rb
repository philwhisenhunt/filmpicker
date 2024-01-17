class PagesController < ApplicationController
    def home
      # Your controller logic (if needed)
      @users = User.first(5)
      @usernames = @users.first(3).pluck(:username)
      @usernames_string = @users.first(3).pluck(:username).join(',')
    end
  end