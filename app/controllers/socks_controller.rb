class SocksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_sock, only:[:show, :edit, :update, :destroy]

  def index
    if params[:size].present?
      @socks = policy_scope(Sock).where(size: params[:size])

    elsif params[:color].present?
      @socks = policy_scope(Sock).where(color: params[:color])

    elsif params[:size].present? && params[:color].present?
      @socks = policy_scope(Sock).where(size: params[:size], color: params[:color])

    else
      @socks = policy_scope(Sock).all
    end

    @socks = @socks.where.not(latitude: nil, longitude: nil)

    @markers = @socks.map do |sock|
      {
        lat: sock.latitude,
        lng: sock.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def filter

  end

  def show
    @transaction = Transaction.new
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
    params.require(:sock).permit(:size, :color, :price_per_day, :shipping_method, :location, :photo, :description, :cleanliness, :title)
  end
end
