class SessionsController < ApplicationController
  def new
  end

  def create
      userinfo = Userinfo.find_by_name(params[:name])
      if userinfo && userinfo.authenticate(params[:password])
          session[:user_id] = userinfo.id
          redirect_to root_url, notice: 'You are Logged in!'
      else
          render :new
      end
  end

  def destroy
      session[:user_id] = nil
      redirect_to root_url, notice: 'Logged Out!'
  end
end
