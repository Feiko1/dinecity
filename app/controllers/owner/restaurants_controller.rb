module Owner
  class RestaurantsController < Owner::BaseController
    def index
      @restaurants = current_user.restaurants
    end

    def edit
      @restaurant = current_user.restaurants.find(params[:id])
    end

    def update
      @restaurant = current_user.restaurants.find(params[:id])
      @restaurant.update(restaurant_params)

      def index
        redirect_to edit_owner_restaurant_path(@restaurant)
      end

      private


    # def requires_owner
    #   unless current_user.kind == "owner"    # REMEMBER TO CHANGE BACK TO 'owner'
    #     flash[:alert] = "You are not owner of any restaurant"
    #     redirect_to root_path
    #   end
    # end

    def restaurant_params
      params.require(:restaurant).permit(
        :name,
        :email_address,
        :phone_number,
        :street_number,
        :street_name,
        :city_name,
        :country_name,
        :postal_code
        )
    end
  end
end
end
