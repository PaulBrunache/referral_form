class Admin::DashboardController < ApplicationController
  
  def index
  end
  
  def referrals
  end
  
  def leaderboard
  end
  
  def edit_admin

  end
  
  def new_admin
    @admin = Admin.new
  end
  
  def create_admin
    begin
      @admin = Admin.new(email: params[:admin_email],
      password: params[:password], password_confirmation: params[:password_confirmation])
      @admin.save!
      flash[:success] = "Admin was successfully created"
    rescue 
      flash[:info] = "Admin was not created please view errors below"
      render :new_admin
    end
  end

    
end
