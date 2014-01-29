class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.username = params[:username]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.birthday = params[:birthday]
    @user.avatar = params[:avatar]

    if @user.save
      redirect_to user_url(@user), notice: "User created successfully."
    else
      render 'new'
    end
  end

  def reset
  end 

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.username = params[:username]
    @user.password = params[:password]
    @user.birthday = params[:birthday]
    @user.avatar = params[:avatar]

    if @user.save
      redirect_to users_url, notice: "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to users_url, notice: "User deleted."
  end
end
