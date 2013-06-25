class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end


  def create
    @user = User.create(params[:user])
    redirect_to user_path(@user)
                # :notice => 'User was successfully created.')
  end

  def edit
    @user = User.find(params[:id])
    redirect_to(@user,
                :notice => 'User was successfully updated.')
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
  end


end
