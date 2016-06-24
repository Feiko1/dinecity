
class RestaurantMailer < ApplicationMailer
  def creation_confirmation(restaurant)
    @restaurant = restaurant

    mail(
      to:      "#{restaurant.user.first_name} #{restaurant.user.last_name} <#{restaurant.user.email}>",
      # @restaurant.user.email, ##CHECK THIS
      subject:  "Restaurant #{@restaurant.name} created!"
      )
  end

  def registration(params)
    @owner_first_name = params["owner_first_name"]
    @owner_last_name = params["owner_last_name"]
    @personal_owner_email = params["personal_owner_email"]
    @personal_owner_phone = params["personal_owner_phone"]
    @restaurant_name = params["restaurant_name"]
    @restaurant_address = params["restaurant_address"]
    @restaurant_phone = params["restaurant_phone"]
    @restaurant_email = params["restaurant_email"]
    @restaurant_registration_number = params["restaurant_registration_number"]

    mail(
      to:      "lrjbrual@lrjbrual.com",
      subject: "Request to create restaurant #{@restaurant_name}!"
      )
  end
end
