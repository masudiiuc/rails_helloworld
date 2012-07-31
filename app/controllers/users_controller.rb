class UsersController < ApplicationController

  def login

  end

  def signup

  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

end
