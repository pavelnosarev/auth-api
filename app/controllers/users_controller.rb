class UsersController < ApplicationController
  def create
    signup = Signup.new(
      name: params[:name],
      email: params[:email]
    )
    if signup.save
      render json: signup.as_json
    else
      render json: { errors: signup.errors.full_messages },
             status: 422
    end
end
