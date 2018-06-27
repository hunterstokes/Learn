class Car
  attr_accessor :speed,:make,:model
  def initialize(make=" ",model=" ", speed=0)
    @speed = speed
    @make = make
    @model = model
  end

  def accelerate()
    @speed = speed + 10
  end

  def brake()
    if @speed-7>0
      @speed = speed - 7
    else
      @speed=0
    end

  end
end
