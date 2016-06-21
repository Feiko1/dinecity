
class RestaurantMailer < ApplicationMailer
  def creation_confirmation(restaurant)
    @restaurant = restaurant

    mail(
      to:      "#{restaurant.user.first_name} #{restaurant.user.last_name} <#{restaurant.user.email}>",
      # @restaurant.user.email, ##CHECK THIS
      subject:  "Restaurant #{@restaurant.name} created!"
    )
  end
end
