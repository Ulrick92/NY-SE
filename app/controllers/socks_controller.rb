class SocksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_sock, only:[:show, :edit, :update, :destroy]

  def index
    @socks = policy_scope(Sock)
  end

  def filter
    # query_color = "color LIKE ?", "blanche"
    # query_color =
    # query_color = "color LIKE ?", "blanche"
    # query_color = "color LIKE ?", "blanche"
    # @socks =
  end

  def show
  end

  def new
    @sock = Sock.new
    authorize @sock
  end

  def create
    @sock = Sock.new(sock_params)
    @sock.user = current_user
    authorize @sock
    if @sock.save
      redirect_to sock_path(@sock)
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @sock.update(sock_params)
    redirect_to socks_path
  end

  def destroy
    @sock.destroy
    redirect_to socks_path
  end

  private

  def set_sock
    @sock = Sock.find(params[:id])
    authorize @sock
  end

  def sock_params
    params.require(:sock).permit(:size, :color, :price, :shipping_method, :location, :photo, :description, :cleanliness, :title)
  end
end
