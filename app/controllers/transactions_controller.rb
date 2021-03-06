class TransactionsController < ApplicationController

  def new
    @sock = Sock.find(params[:sock_id])
    @transaction = Transaction.new
    authorize @transaction
  end

  # def confirm
  #   @transaction = Transaction.find(params[:id])
  #   authorize @transaction
  #   @transaction.save
  # end

  def create
    @sock = Sock.find(params[:sock_id])
    @transaction = Transaction.new(transaction_params)
    # we need `sock_id` to asssociate transaction with corresponding restaurant
    @transaction.sock = Sock.find(params[:sock_id])
    @transaction.user = current_user
    @transaction.statut = "pending"
    authorize @transaction
    if @transaction.save
      redirect_to edit_sock_transaction_path(@transaction.sock_id, @transaction)
    else
      render "socks/show"
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
    @sock = Sock.find(params[:sock_id])
    authorize @transaction
  end

  def update
    @transaction = Transaction.find(params[:id])
    @transaction.update(transaction_params)
    authorize @transaction
    redirect_to sock_transaction_path(@transaction)
  end

  def show
    @transaction = Transaction.find(params[:id])
    authorize @transaction
  end

   def validates_user
    @transaction = Transaction.find(params[:id])
    @transaction.statut = "validate"
    authorize @transaction
    @transaction.save
    redirect_to dashboard_seller_path(current_user)
  end

  # NOT IN USE
  def refuses_user
    @transaction = Transaction.find(params[:id])
    @transaction.statut = "decline"
    authorize @transaction
    @transaction.save
    redirect_to dashboard_seller_path(current_user)
  end

  private

  def transaction_params
    params.require(:transaction).permit(:sock_id, :address, :pay_method, :starts_on, :ends_on)
  end

end
