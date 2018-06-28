class Car
  attr_accessor :speed,:make,:model,:light
  def initialize(make=" ",model=" ", speed=0, light="Off")
    @speed = speed
    @make = make
    @model = model
    @light = light
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

  def light()
    if @light == "Off"
        @light = "On"
    else
        @light = "Off"
    end
  end

end
