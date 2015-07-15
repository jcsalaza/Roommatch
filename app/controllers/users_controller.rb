class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.page(params[:page]).per_page(25)
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to edit_user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.save
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

private
  def user_params
    params.require(:user).permit(
      :email, 
      :password, 
      :first_name, 
      :last_name, 
      :age, 
      :gender,
      :hometown,
      :school,
      :grad_year,
      :city,
      :move_in_date,
      :bedrooms,
      :budget,
      :smoking_preference,
      :drinking_preference,
      :cleanliness)
  end

end
