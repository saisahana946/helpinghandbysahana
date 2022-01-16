class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username]=="admin" && params[:password]=="Ssaaihbaanbaa123$"
         session[:admin] = "admin"
         redirect_to :controller=>:dashboard, :action=>:index
      else
        flash[:notice]="Invalid user"
        render :action=>:login
  end
end
end
  def logout
    session[:admin]=nil
    flash[:notice]="You are logged out"
    render :action=>:login
  end
end
