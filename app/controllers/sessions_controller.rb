class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug
    if params[:name].nil? || params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secret_path
    end
  end

  def destroy
    session.delete :name
  end
end