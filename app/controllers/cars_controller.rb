class CarsController < ApplicationController
  def index
  end

  def create
    session[:car]=(Car.new(params[:make],params[:model])).to_yaml
    redirect_to '/cars/status'
  end

  def status
    @car = YAML.load(session[:car])
    @make=@car.make
    @model=@car.model
    @speed=@car.speed


  end


  def accelerate
    @car = YAML.load(session[:car])
    @car.accelerate
    session[:car] = @car.to_yaml
    redirect_to '/cars/status'
    cookies[:speed]=@car.speed
  end

  def brake
    @car = YAML.load(session[:car])
    @car.brake
    session[:car] = @car.to_yaml
    redirect_to '/cars/status'
    cookies[:speed]=@car.speed
  end

end
