class WelcomeController < ApplicationController
  def index
    flash[:notice] = "好不好！！！"
  end
end
