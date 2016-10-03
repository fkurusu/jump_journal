class SessionsController < ApplicationController
  def new; end
    
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      flash[:notice] = "Logged in successfully"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "Email or Password incorrect."
      redirect_to login_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Logged out successfully.'
    redirect_to root_path
  end
  
  # KEEP DOING CREATE ACTION AND THE FLASH MESSAGE.
end
