class HomeController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.order(created_at: :desc)
  end
end
