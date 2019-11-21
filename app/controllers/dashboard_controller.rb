class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @courses = @user.courses
  end
end
