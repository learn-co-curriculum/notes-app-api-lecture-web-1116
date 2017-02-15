class Api::V1::SessionsController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      jwt = Auth.issue({user_id: user.id})
      render json: {jwt: jwt, username: user.username}
    end
  end

end
