class SessionsController < ApplicationController
  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name].empty?
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end