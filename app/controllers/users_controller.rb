class UsersController < ApplicationController
  
  before_action :admin_only, :except => :show
  before_action :my_record, :only => :show

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  private
  
  def admin_only
    unless current_user.admin?
      redirect_to root_path, :alert => "Access denied"
    end
  end
  
  def my_record
    @user = User.find(params[:id])
    unless current_user.email == @user.email or current_user.admin?
      redirect_to root_path, :alert => "Access denied"
    end
  end

end