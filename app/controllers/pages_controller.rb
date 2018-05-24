class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @socks=policy_scope(Sock)
  end

  def dashboard
    @socks = policy_scope(Sock).where(user_id = current_user.id)
  end
end
