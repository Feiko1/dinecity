module Owner
  class BaseController < ApplicationController
    layout "owner"

    before_action :authenticate_user!
    before_action :requires_owner

    private

    def requires_owner
      unless current_user.kind == "owner" # REMEMBER TO CHANGE BACK TO 'owner'
        flash[:alert] = "You are not owner of any restaurant"
        redirect_to root_path
      end
    end
  end
end
