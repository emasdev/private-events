class UsersController < ApplicationController
  def new
  	@user= User.new
  end

  def create
  	@user=User.new(user_params)
  	@user.save
  end

  def show
  	@user = User.find(params[:id])
  end

  def log_in
  	@user = User.find_by_name(params[:name])
  end



  private

  def user_params
  	params.require(:user).permit(:name)
  end

end
