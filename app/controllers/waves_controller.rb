class WavesController < ApplicationController
  before_action do
    if session[:user_id].present?
    else
      redirect_to sign_in_path
    end
  end


  def index
    @users = User.all
    @waves = Wave.all
    @wave = Wave.new
  end
end
