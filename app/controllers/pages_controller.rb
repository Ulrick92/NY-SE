class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @socks=policy_scope(Sock)
  end

  def dashboard_seller
    @user = current_user
    @all_socks = policy_scope(Sock)
    query = "SELECT * FROM transactions JOIN socks ON transactions.sock_id = socks.id WHERE socks.user_id = ?"
    @transactions = Transaction.find_by_sql [ query, @user.id ]
    @all_transactions = policy_scope(Transaction)
    @my_sales = Transaction.where(user_id: current_user.id).where(statut: "validate")
  end

  def dashboard_buyer
    @user = current_user
    @all_socks = policy_scope(Sock)
    query = "SELECT * FROM transactions JOIN socks ON transactions.sock_id = socks.id WHERE socks.user_id = ?"
    @my_socks = Transaction.find_by_sql [ query, @user.id ]

    @all_transactions = policy_scope(Transaction)
    @my_transactions = Transaction.where(user_id: current_user.id)
  end

  def dashboard_socks
    @user = current_user
    @all_socks = policy_scope(Sock)
    @my_socks = Sock.where(user_id: current_user.id)

    @all_transactions = policy_scope(Transaction)
    @my_transactions = Transaction.where(user_id: current_user.id)
  end


end
