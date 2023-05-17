class InvestmentsController < ApplicationController
  def index
    @user  = current_user
    @investment = Investment.new
    @investments = Investment.all
  end

  def create
    investment = Investment.create(
          user_id: current_user.id,
          coin_name: params[:investment][:coin_name],
          shopping_price: params[:investment][:shopping_price],
          invest: params[:investment][:invest],
          amount: params[:investment][:amount]
    )
    if investment.save
      redirect_to investments_path , notice: 'Your investment created'
    else
      redirect_to investments_path , alert: 'You filled out the form incorrectly'
    end

  end

  def destroy  
    Investment.destroy(params[:id])
    redirect_to investments_path
  end
end
