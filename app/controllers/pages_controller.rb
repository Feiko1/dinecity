class PagesController < ApplicationController
  #test branchtest
  #
  skip_before_action :authenticate_user!, only: :home, :index, :show #:booking


  def home
  end

  private


end
