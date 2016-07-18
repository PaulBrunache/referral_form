class Admin::DashboardController < ApplicationController

  def index
  end

  def referrals
  end

  def leaderboard
  end

  def edit_admin
    @admin = Admin.all 
  end

  def new_admin
    @admin = Admin.new
  end
  
  #reset admin password through devise method catch exceptions
  def reset_admin
    begin
      user = Admin.where( email: params['email']).first
      user.send_reset_password_instructions
      render status: 200
    rescue Exception => e
      raise e  
      render status: 500
      render :edit_admin
    end
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
