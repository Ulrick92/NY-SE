class TransactionsController < ApplicationController

  def new
    @sock = Sock.find(params[:sock_id])
    @transaction = Transaction.new
    authorize @transaction
  end



  def create
    @transaction = Transaction.new(transaction_params)
    # we need `sock_id` to asssociate transaction with corresponding restaurant
    @transaction.sock = Sock.find(params[:sock_id])
    @transaction.user = current_user
    authorize @transaction
    if @transaction.save
      redirect_to sock_transaction_path(@transaction.sock_id, @transaction)
    else
      render "new"
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
    authorize @transaction
  end

  private

  def transaction_params
    params.require(:transaction).permit(:sock_id, :address, :pay_method, :starts_on, :ends_on)
  end

end
