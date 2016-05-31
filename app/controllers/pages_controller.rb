class PagesController < ApplicationController
  def home
  end
  def dashboard
  end
  def employee_registration
  end
  def referrals

  end

  def authenticate_user
    puts "in method\n"
    employee = params[:employee_email]
    admin =
    {
      email: params[:admin_email],
      password: params[:password]
    }

    if !params[:employee_email].blank?
      if  found_user?(employee)

      else
        render :employee_registration
      end
    elsif !params[:admin_email].blank? && !params[:password].blank?
      puts "admin\n\n"
      puts "#{found_user?(admin, true)}\n\n"
      if  found_user?(admin, true)
        puts "ok\n"
        sign_in(:user, Admin.find_by_email(params[:admin_email]))
        redirect_to admin_leaderboard_path
      else
        puts "No\n"
        render :home
      end
    else
      render :home
    end
  end

    def found_user?(param,admin=false)
      puts "#{param}\n\n#{admin}"
      if admin
        Admin.where(email: param[:email]).first.try(:valid_password?, param[:password])
      else
        Employee.where(email: param)
      end
    end
end
