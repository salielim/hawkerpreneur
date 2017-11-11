class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
  end

  def contact
  end

  def info
  end
end
