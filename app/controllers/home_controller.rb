class HomeController < ApplicationController
  def index
    redirect_to tournaments_path
  end
end
