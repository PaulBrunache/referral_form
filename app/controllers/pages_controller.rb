class PagesController < ApplicationController
  def home
  end
  def authenticate_user
    if params[:employee_email].present?
      puts "employee made it"
    elsif params[:admin_email].present?
      puts "admin made it"
      if params[:password].present?
      end
    else
      puts "should be home"
      render :home
    end
  end
end
