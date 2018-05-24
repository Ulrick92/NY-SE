class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @socks=policy_scope(Sock)
  end

  def dashboard
    @user = current_user
    @all_socks = policy_scope(Sock)
    @my_socks = Sock.where(user_id: current_user.id)

    @all_transactions = policy_scope(Transaction)
    @my_transactions = Transaction.where(user_id: current_user.id)
  end

    def validates_user
     @transaction = Transaction.find(sock_id: params[:id])
     @transaction.statut = "Accepted"
     @transaction.save
     redirect_to dashboard_path
   end

   # NOT IN USE
   def refuses_user
    raise
     @transaction = Transaction.find(params[:id])
     @transaction.statut = "Declined"
     @transaction.save
     redirect_to dashboard_path
   end
end
