class ViewingsController < ApplicationController
  include ActionView::RecordIdentifier
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

  def create_or_update
    @film = Film.find(params[:film_id])
    @user = User.find(params[:user_id])
  
    # Check if the user has seen the film
    if @user.seen?(@film)
      # If the user has seen the film, update the existing viewing
      @viewing = @user.viewings.find_by(film: @film)
    else
      # If the user hasn't seen the film, create a new viewing
      @viewing = Viewing.new(user: @user, film: @film)
    end
  
    # Save the viewing
    if @viewing.save
      respond_to do |format|
        format.turbo_stream 
        format.html { redirect_to film_list_path } # Adjust the redirect path if needed
        format.json { render json: { status: 'success' } } # Add this line
      end
    else
      # Handle errors if saving fails
      # ...
    end
  end
  
end


