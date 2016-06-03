class Admin::DashboardController < ApplicationController
  def index
  end
  def referrals
  end
  def edit_admin

  end
  def new_admin
    @error_message = nil
    begin
      @admin = Admin.new(email: params[:admin_email],
      password: params[:password], password_confirmation: params[:password_confirmation])
      @admin.save!
    rescue ActiveRecord::RecordInvalid => invalid
      puts invalid.record.errors
      @error_message = "#{$!}"
      puts "\n\nsomething: #{@error_message}\n\n"
    end

    if @error_message
      render :new_admin
      flash[:warning] = "Admin was not created please view erros below"
    else
      flash[:success] = "Admin was successfully created"
    end
    puts "\n\nThis is the error: #{@error_message}\n\n"

  end

  def leaderboard
  end
end
