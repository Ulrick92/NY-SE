class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @socks=policy_scope(Sock)
  end
end
