class DrinkMailer < ActionMailer::Base
  default from: "foobartender@example.com"

  def welcome(drink)
    @drink = drink
    mail(to: @drink.email, subject: "Welcome to foobartender!")
  end

end
