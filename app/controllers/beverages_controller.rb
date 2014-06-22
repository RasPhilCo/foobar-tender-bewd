class BeveragesController < ApplicationController
  def new
    @beverage = Beverage.new
  end

  def create
    @beverage = Beverage.new
    @beverage.name = params[:beverage][:name]
    @beverage.price = params[:beverage][:price]
    @beverage.description = params[:beverage][:description]
    @beverage.email = params[:beverage][:email]
  
    if @beverage.save
      DrinkMailer.welcome(@beverage).deliver
      redirect_to @beverage
    else
      render 'new'
    end
  end 

  def show
    @beverage = Beverage.find(params[:id])
  end

  def index
    @beverages = Beverage.all
  end
end
