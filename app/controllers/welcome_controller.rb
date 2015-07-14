class WelcomeController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
  end

  def login
  end

  def auth
  end


end
