class UsersapiController < ApplicationController
  def index
    @users = User.order("id")
    respond_to do |format|
      
      format.json { render json: @users } # Повертаємо створений елемент у форматі JSON
    end
  end
end
