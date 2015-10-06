class HomeController < ApplicationController
  # before_action :authenticate_administrator!
  def index
    @user = current_administrator
  end
end
