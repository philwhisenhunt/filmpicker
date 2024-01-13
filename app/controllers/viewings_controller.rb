class ViewingsController < ApplicationController
    def create
        respond_to do |format|
          format.html { redirect_to film_list_user_path(@user), notice: 'Movie marked as viewed.' }
          format.turbo_stream { render turbo_stream: turbo_stream.replace("film_#{film.id}", partial: 'film_button', locals: { film: film, user: @user }) }
        end
    end

  def update
  end

  def destroy
  
  end
end


