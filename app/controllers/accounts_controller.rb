class AccountsController < ApplicationController
  def show
    account = Account.find_by(user_id: current_user.id)
    render json: account
  end
end