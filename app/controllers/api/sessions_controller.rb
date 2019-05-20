class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:email],
      params[:user][:password]
      )
    if @user
      login(@user)
      render '/api/users/show'
    else
      render json: ['No such user'], status: 404
    end

    def destroy
      if current_user
        logout
        render json: {}
      else
        render json: ['Already Logged Out'], status: 404
      end
    end
  end
end