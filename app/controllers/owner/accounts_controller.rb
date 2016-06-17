module Owner
  class AccountsController < Owner::BaseController

    def edit
      @owner = current_user
    end

    def update
      @owner = current_user

      if @owner.update(owner_params)
        flash[:success] = "Your profile is now updated"
        redirect_to edit_owner_account_path
      else
        render 'edit'
      end
    end

    private

    def owner_params
      params.require(:user).permit(:email, :first_name, :last_name)
    end
  end
end
