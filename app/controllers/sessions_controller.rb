class SessionsController < ApplicationController
  def new
  end
  
  def create
  
  if !params[:name].empty?
    session[:name] = params[:name]
    
  else 
    redirect_to '/login'
  end 
  
  def destroy 
    session.destroy :name 
  end 
end
