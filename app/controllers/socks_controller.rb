class SocksController < ApplicationController

  before_action :set_sock, only:[:show, :edit, :update, :destroy]

  def index
    @socks = Sock.all
  end

  def show
  end

  def new
    @sock = Sock.new
  end

  def create
    @sock = Sock.new(sock_params)
    if @sock.save
      redirect_to sock_path(@sock)
    else
      render 'new'
    end
  end

  def edit
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
  end

  def sock_params
    params.require(:sock).permit(:size, :color, :price, :shipping_method, :location, :photo, :description, :cleanliness, :title)
  end
end