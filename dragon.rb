class Dragon
  attr_accessor :name, :color, :rider, :hungry, :hunger
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @hunger = 3
  end

  def eat
    if @hunger > 0
       @hunger -= 1
       @hungry = false if @hunger == 0
    else
      @hungry = false
      "Not hungry"
    end
  end
end
