class AccountsController < ApplicationController

  def index

  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    if @owner.update(owner_params)
    flash[:success] = "Your Profiles is now updated"
    redirect_to owner_path(@owner)
    else
    render 'edit'
  end
  end

end
