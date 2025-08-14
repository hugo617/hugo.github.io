class LoginController < ApplicationController
  def login
    # Display login form
  end

  def authenticate
    # Handle login authentication
    redirect_to root_path, notice: 'Login successful'
  end
end