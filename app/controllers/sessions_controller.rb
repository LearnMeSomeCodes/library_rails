class SessionsController < ApplicationController
  def set_demo
    session[:demo] = params[:boop]
    render text: "done! set to #{params[:boop]}"
  end

  def show_demo
    render text: session[:demo]
  end

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:current_user] = @user.id
      redirect_to users_path
    else
      render :new
    end
  end

  def destroy
    session[:current_user] = nil
    redirect_to authors_path
  end
end
