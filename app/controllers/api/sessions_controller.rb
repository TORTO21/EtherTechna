class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(
      username: params[:user][:username],
      email: params[:user][:email],
      password: params[:user][:password]
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
