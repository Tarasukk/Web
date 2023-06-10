class InvestmentsapiController < ApplicationController
  protect_from_forgery with: :null_session
  
  def index
    @investments = Investment.order("id")

    respond_to do |format|
      
      format.json { render json: @investments } # Повертаємо створений елемент у форматі JSON
    end
  end

  def create
    
    investment = Investment.create(
      user_id: params[:investmentsapi][:user_id],
      coin_name: params[:investmentsapi][:coin_name],
      shopping_price: params[:investmentsapi][:shopping_price],
      invest: params[:investmentsapi][:invest],
      amount: params[:investmentsapi][:amount]
    )

    if investment.save
      render json: investment, status: :created
    else
      render json: { error: 'You filled out the form incorrectly' }, status: :unprocessable_entity
    end
  end

  def destroy
    protect_from_forgery with: :null_session
    Investment.destroy(params[:id])
  end
  
end
