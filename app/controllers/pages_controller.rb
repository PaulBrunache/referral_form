class PagesController < ApplicationController
  def home
  end
  def dashboard
  end
  def authenticate_user
    employee = params[:employee_email]
    admin =
    {
      email: params[:admin_email],
      password: params[:password]
    }

    if !params[:employee_email].blank?
      if  found_user?(employee)
        session[:current_employee] = employee
        flash[:info] = "Welcome Back"
        redirect_to new_recommendation_path
      else
        flash[:warning] = "Registration required"
        redirect_to new_employee_path
      end
    elsif !params[:admin_email].blank? && !params[:password].blank?

      if  found_user?(admin, true)
        flash[:info] = "You have successfully signed in, Welcome to your Admin Panel"
        sign_in(:user, Admin.find_by_email(params[:admin_email]))
        redirect_to admin_leaderboard_path
      else
        flash[:error] = "Your email/password is incorrect. Please make sure your account was created by an admin prior to signing in"
        render :home
      end
    else
      flash[:warning] = "Please fill out the form below prior to submitting"
      render :home
    end
  end

  def found_user?(param,admin=false)
    if admin
      user = Admin.where(email: param[:email]).first.try(:valid_password?, param[:password])
    else
      user = Employee.where(email: param).first
    end
    if user.nil?
      false
    else
      true
    end
  end
end
